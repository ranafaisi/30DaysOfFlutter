import 'package:flutter/material.dart';
import 'package:tutorial_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // Singlechildscrollview is used for to manage screen on all sizes to make responsive
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enetr user name", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true, //used to hide text
                    decoration: const InputDecoration(
                        hintText: "Enetr password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //The navigator is used to go from one page to anothe on click
                        Navigator.pushNamed(context, MyRoutes.homeRout);
                      },
                      style: TextButton.styleFrom(
                          minimumSize: const Size(120, 40)),
                      child: const Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
