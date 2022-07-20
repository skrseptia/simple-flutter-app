import 'package:flutter/material.dart';
import 'package:uas_farhannugroho_2018230005/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                content: const Text('Apakah anda yakin untuk keluar?'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Tidak'),
                    onPressed: () {
                      Navigator.of(ctx).pop(false);
                    },
                  ),
                  TextButton(
                    child: const Text('Ya'),
                    onPressed: () {
                      Navigator.of(ctx).pop(true);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
