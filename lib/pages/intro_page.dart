import 'package:flutter/material.dart';
import 'package:grocery_store/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          //logo
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0,
              right: 80,
              bottom: 40,
              top: 160,
            ),
            child: Image.asset('lib/images/avocado.png'),
          ),


          //we deliver groceries at your doorstep
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          const SizedBox(height: 24),


          //fresh items everyday
          const Text(
            "Fresh items everyday",
            style: TextStyle(
              color: Color.fromARGB(255, 134, 132, 132),
            ),
          ),


          const Spacer(),

          //get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              }
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 28, 245),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ]),
    );
  }
}