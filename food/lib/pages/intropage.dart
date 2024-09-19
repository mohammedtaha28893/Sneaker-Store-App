import 'package:flutter/material.dart';
import 'package:food/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                'lib/images/nike.png',
                height: 250,),
              ),
            
            const SizedBox(height: 50),
          
              //title
              const Text(
                'Just Do It',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
          
              //sub title
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Check out the NEW collection of exclusive sneakers!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey
                  ), 
                  textAlign: TextAlign.center,
                ),
              ),
          
              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                    ),
                  ),
                            ),
              )

            ],
          ),
        ),
      ),
    );
  }
}