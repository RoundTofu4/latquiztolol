import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'disease_grid_page.dart';
import 'package:latihanquiztolol/home.dart';
import 'package:latihanquiztolol/disease_list_page.dart';

class login extends StatelessWidget {
  const login({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    // var usernameController;
    // var passwordController;
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Login'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Login'),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                      onPressed: () {
                        // Implement login logic here
                        // Contoh sederhana: Cek apakah username dan password sesuai
                        if (usernameController.text == 'user' &&
                            passwordController.text == 'password') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DiseaseGridPage(),//home(),
                            ),
                          );
                        } else {
                          // Tampilkan pesan error jika login gagal
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Login Gagal. Coba lagi.'),
                            ),
                          );
                        }
                      },
                      child: Text('Login')
                  ),
                ],
              )
          )
        )
    );
  }
}
