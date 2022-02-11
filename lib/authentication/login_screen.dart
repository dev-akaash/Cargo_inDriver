import 'package:cargo_driver/authentication/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  controller: emailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.amber),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    // hintText: "Name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(16, 16))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    // hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  controller: passwordTextEditingController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: const TextStyle(color: Colors.amber),
                  decoration: const InputDecoration(
                    labelText: "Password",
                    // hintText: "Name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(16, 16))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    // hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () => {},
                    style:
                        ElevatedButton.styleFrom(primary: Colors.amberAccent),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    // style:
                    // const ButtonStyle(foregroundColor: Colors.amberAccent),
                    onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (c) => SignupScreen()))
                        },
                    child: const Text(
                      "Create a new Account",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
