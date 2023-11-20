import 'package:flutter/material.dart';
import 'package:homework3/thirdScreen.dart';
import 'package:homework3/userD.dart';

class SecondS extends StatefulWidget {
  const SecondS({super.key});

  @override
  State<SecondS> createState() => _SecondSState();
}

class _SecondSState extends State<SecondS> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text(
          'Sign in',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/img2.png'),
                ),
              ),
              height: 200,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  prefixIcon: const Icon(Icons.phone_android_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.password_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                UserData userData = UserData(
                  phone: phoneController.text,
                  email: emailController.text,
                  password: passwordController.text,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdS(
                      userData: userData,
                    ),
                  ),
                );
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 35, right: 35, bottom: 15, top: 15),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
