import 'package:flutter/material.dart';
import 'package:uas_farhannugroho_2018230005/about_screen.dart';
import 'package:uas_farhannugroho_2018230005/contact_screen.dart';
import 'package:uas_farhannugroho_2018230005/gallery_screen.dart';
import 'package:uas_farhannugroho_2018230005/service_scren.dart';
import 'package:uas_farhannugroho_2018230005/settings_screen.dart';
import 'package:uas_farhannugroho_2018230005/team_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 80, left: 50, right: 50, bottom: 80),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutScreen()));
                          },
                          icon: const Icon(
                            Icons.home,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Tentang",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceScreen()));
                          },
                          icon: const Icon(
                            Icons.design_services,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Service",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TeamScreen()));
                          },
                          icon: const Icon(
                            Icons.people_alt_outlined,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Tim Kami",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const GalleryScreen()));
                          },
                          icon: const Icon(
                            Icons.photo_album_outlined,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Galeri Kami",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContactScreen()));
                          },
                          icon: const Icon(
                            Icons.call,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Kontak Kami",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SettingsScreen()));
                          },
                          icon: const Icon(
                            Icons.settings,
                            size: 40,
                          ),
                        )),
                    const Text(
                      "Setting",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
