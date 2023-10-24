import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
// inisiasi untuk pembuatan form
  final _bookingKey = GlobalKey<FormState>();

  final ctrlFullName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Booking Form",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),

      // body
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(6),
          child: Form(
            key: _bookingKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // margin
                  SizedBox(
                    height: 24,
                  ),

                  // FIELD NAMA
                  TextFormField(
                    controller: ctrlFullName,
                    keyboardType: TextInputType.text,
                    // dekorasi text input layout
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    // validator
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Full Name tidak boleh kosong';
                      }
                      return null;
                    },
                  ),

                  // margin
                  SizedBox(
                    height: 24,
                  ),

                  // FIELD EMAIL
                  TextFormField(
                    controller: ctrlEmail,
                    keyboardType: TextInputType.emailAddress,
                    // dekorasi text input layout
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    // validator
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      // kondisi email
                      return !EmailValidator.validate(value.toString())
                          ? 'Email tidak valid'
                          : null;
                    },
                  ),

                  // margin
                  SizedBox(
                    height: 24,
                  ),

                  // FIELD Phone Number
                  TextFormField(
                    controller: ctrlPhone,
                    keyboardType: TextInputType.number,
                    // dekorasi text input layout
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    // validator
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nomor Telepon tidak boleh kosong';
                      } else {
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Nomor Telepon hanya boleh mengandung angka';
                        } else if (value.length < 8 || value.length > 12) {
                          return 'Nomor Telepon harus terdiri dari 8 sampai 12 digit';
                        }
                      }

                      return null;
                    },
                  ),

                  // margin
                  SizedBox(
                    height: 24,
                  ),

                  // FIELD City
                  TextFormField(
                    controller: ctrlCity,
                    keyboardType: TextInputType.text,
                    // dekorasi text input layout
                    decoration: const InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_city),
                    ),
                    // validator
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'City tidak boleh kosong';
                      } else if (RegExp(r'[0-9]').hasMatch(value)) {
                        return 'City tidak boleh mengandung angka';
                      }
                      return null;
                    },
                  ),

                  // margin
                  SizedBox(
                    height: 24,
                  ),

                  // BUTTON
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_bookingKey.currentState!.validate()) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Booking Confirmation'),
                            content: Text(
                                "Name: ${ctrlFullName.text}\nEmail: ${ctrlEmail.text}\nPhone: ${ctrlPhone.text}\nCity: ${ctrlCity.text}"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  // menghapus halaman sebelumnya makanya pakai 2
                                  Navigator.pop(context, 'OK');
                                  Navigator.pop(context, 'OK');
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                        // REDIRECT (push & pushReplacement)
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return BookingPage();
                        // }));
                      }
                    },
                    icon: const Icon(Icons.save),
                    label: const Text("Book Now"),
                    // style button
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                        backgroundColor: Colors.green[700],
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
