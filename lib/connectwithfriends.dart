import 'package:flutter/material.dart';
import 'package:voxial/personalize.dart';

class Connectwithfriends extends StatelessWidget {
  const Connectwithfriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE55733),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/telefon.jpg',
              width: 300,
              height: 400,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),

            const Text(
              'Connect with your friends!',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Search for your friends on the app and connect with them. You can also invite your friends who are not on the app yet to join you",
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Personalize()),
          );
        },
        child: const Icon(Icons.arrow_forward, color: Colors.black),
      ),
    );
  }
}
