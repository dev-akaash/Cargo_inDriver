import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
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
              const Text(
                "Register as a driver",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  controller: nameTextEditingController,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.amber),
                  decoration: const InputDecoration(
                    labelText: "Name",
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
                  controller: phoneTextEditingController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.amber),
                  decoration: const InputDecoration(
                    labelText: "Phone",
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
                      "Create Account",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
