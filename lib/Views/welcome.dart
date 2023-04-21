import 'package:ariespaper/Views/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6DE),
      body: Container(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Welcome to Aries Paper',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Image.asset('assets/logo2.png'),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style:
                    GoogleFonts.montserrat(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Connecting Buyers and Sellers:\nThe '),
                  TextSpan(
                    text: 'Aries App',
                    style: TextStyle(
                      color: Color(0xFFFFB800), // Yellow color
                    ),
                  ),
                  TextSpan(
                    text:
                        "'s Role in Facilitating\na More Efficient Paper Marketplace",
                  ),
                ],
              ),
            ),
            Image.asset('assets/welcome.png'),
            Expanded(
                child: Container(
              width: double.maxFinite,
              color: Color(0xFFF5F5F5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A deep dive into how the Aries app is bridging the gap\nbetween paper sellers and buyers, making the paper\npurchasing process more efficient and effective for all\nparties involved',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontSize: 12, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: OutlinedButton(
                      onPressed: () {
                        // TODO: Add logic for handling button press
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ));
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          fixedSize: Size(double.maxFinite, 50),
                          backgroundColor: Color(0xFFFFB800)),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
