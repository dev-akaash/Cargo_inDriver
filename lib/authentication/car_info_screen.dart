import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  CarInfoScreen({Key? key}) : super(key: key);

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModelTextEditingController = TextEditingController();
  TextEditingController carNumberTextEditingController =
      TextEditingController();
  TextEditingController carColorTextEditingController = TextEditingController();

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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Car Information",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  controller: carModelTextEditingController,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.amber),
                  decoration: const InputDecoration(
                    labelText: "Car Model",
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
                  controller: carNumberTextEditingController,
                  keyboardType: TextInputType.text,
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
              TextField(
                controller: carColorTextEditingController,
                keyboardType: TextInputType.text,
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
