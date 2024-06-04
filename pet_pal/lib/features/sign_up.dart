//login screen

import 'package:flutter/material.dart';
import 'package:pet_pal/features/loin_screen.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                   
                      ),
                ),
              ),
              Center(
                child: Text(
                  "Register Here",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                     
                      ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Flexible(
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Email",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Full Name",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                style: ElevatedButton.styleFrom(
                    //  primary: Colors.deepPurple, // Background color
                    // onPrimary: Colors.white,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal, // Text color
                    elevation: 5,
                    minimumSize: Size(
                        MediaQuery.sizeOf(context).width * .9,
                        MediaQuery.sizeOf(context).width *
                            .16) // Elevation (shadow)
                    ),
                child: const Text("sign up"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    "Have an account?",
                    style: TextStyle(),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                  
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
