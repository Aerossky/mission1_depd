// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 1',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),

      // body
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          // template layout
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: ClipRRect(
                  child: Image.asset(
                    'images/hero_bg.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 1,
              child: Row(

              ),
            ),

            
            Flexible(
              flex: 4,
              child: Row(
                
              ),
            ),

          ]
        ),
      ),
    );
  }
}
