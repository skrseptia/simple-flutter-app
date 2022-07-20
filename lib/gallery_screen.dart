import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeri Kami"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-1.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-3.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-4.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-5.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-6.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Image.asset(
                  'images/property-7.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                height: 300,
                child: Image.asset(
                  'images/property-8.jpg',
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
