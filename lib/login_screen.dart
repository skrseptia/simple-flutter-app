import 'package:flutter/material.dart';
import 'package:uas_farhannugroho_2018230005/home_screen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var nUsername, nPassword;
  //tambahkan form
  final _formKey = GlobalKey<FormState>();
  static const routeName = '/auth';

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 172, 220, 216)),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 450,
                    child: Flexible(
                      flex: deviceSize.height > 500 ? 2 : 1,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SafeArea(
                          child: Card(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan E-mail anda!';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Email',
                                        ),
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan umur anda!';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Umur',
                                        ),
                                      ),
                                      TextFormField(
                                        //cek data field nya kosong
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan Farhan sebagai username!';
                                          }
                                          return null;
                                        },
                                        controller: myUsernameController,
                                        decoration: const InputDecoration(
                                          hintText: ' Username',
                                        ),
                                      ),
                                      TextFormField(
                                        //cek data field nya kosong
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Masukkan password!';
                                          }
                                          return null;
                                        },
                                        maxLength: 16,
                                        controller: myPasswordController,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          hintText: ' Password',
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25.0,
                                      ),
                                      MaterialButton(
                                        minWidth: 85.0,
                                        height: 40.0,
                                        color: const Color.fromARGB(
                                            255, 98, 177, 171),
                                        textColor: Colors.white,
                                        onPressed: () {
                                          nUsername = myUsernameController.text;
                                          nPassword = myPasswordController.text;
                                          if (_formKey.currentState!
                                              .validate()) {
                                            if (nUsername != 'Farhan') {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Username Salah, Farhan")));
                                            } else if (nPassword.length <= 5) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "Password Salah, harus lebih dari 5")));
                                            } else {
                                              //aksi pindah
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomeScreen()
                                                    // PageHome(
                                                    //   nama: nUsername,
                                                    //   password:
                                                    //       nPassword, // variable yang di pass ke page home
                                                    // ),
                                                    ),
                                              );
                                            }
                                          }
                                        },
                                        child:
                                            const Center(child: Text('Submit')),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
