import 'package:flutter/material.dart';

class Mission1Page extends StatefulWidget {
  const Mission1Page({super.key});

  @override
  State<Mission1Page> createState() => _Mission1PageState();
}

class _Mission1PageState extends State<Mission1Page> {
  // button condition
  bool buttonColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mission 1',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          // Dimmension
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.green.shade100],
                  // start dan end
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  // Banner
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        child: Image.asset(
                          'images/banner.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  // Photo List
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // photo 1
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/1.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 2
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/2.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 3
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/3.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              // photo 4
                              // style gambar
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.asset(
                                      'images/4.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Text
                  const Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Text(
                          "Bali: Pesona Keindahan Pulau Surgawi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // scrollview
                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              '''Bali, pulau eksotis di Indonesia, memukau wisatawan dengan keindahan alamnya yang menakjubkan dan warisan budayanya yang kaya. Dengan pantainya yang berpasir putih halus dan air laut biru jernih, Bali adalah surga bagi pecinta pantai. Pantai-pantai seperti Kuta, Seminyak, dan Jimbaran menawarkan matahari terbenam yang memukau dan ombak yang sempurna untuk berselancar. Selain itu, hutan hujan tropisnya yang hijau subur dan gunung-gunungnya yang menjulang memberikan pengalaman trekking yang luar biasa. Bali juga dikenal dengan teras-teras sawahnya yang menawan, terutama di daerah Tegallalang, menciptakan pemandangan yang memikat mata. Namun, pesona Bali tidak hanya terbatas pada alamnya. Budaya pulau ini tercermin dalam kuil-kuil megah seperti Pura Tanah Lot dan Pura Besakih, serta seni tari dan musik tradisional yang memukau. Dengan keramahan penduduknya dan hidangan kuliner yang lezat, Bali bukan sekadar destinasi liburan, tapi pengalaman yang mengubah hidup. Keindahan Bali tidak hanya terlihat, tetapi juga dirasakan, menjadikannya destinasi impian bagi banyak wisatawan di seluruh dunia.''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                

                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // button
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  buttonColor = !buttonColor;
                });
              },
              backgroundColor: Colors.white,
              shape: CircleBorder(),
              child: Icon(
                Icons.favorite,
                color: buttonColor ? Colors.red : Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
