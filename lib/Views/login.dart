import 'package:ariespaper/Views/otp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFF6DE),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Login',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/logo2.png',
                height: 68,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Secure Login with OTP for\nAries Paper App',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Access a Wide Range of Paper Seller\nCompanies with Confidence',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.montserrat(fontSize: 12, color: Colors.black),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IntrinsicHeight(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, top: 10, bottom: 10),
                              child: Text(
                                '+91 ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            VerticalDivider(
                              width: 40,
                            )
                          ],
                        ),
                      ),
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 5, minHeight: 0),
                      prefixStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 12.0,
                      ),
                      hintText: 'Enter number',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFB800),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      suffixIcon: Image.asset('assets/tick.png'),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 40,
                        minHeight: 40,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OutlinedButton(
                  onPressed: () {
                    // TODO: Add logic for handling button press
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => otp(),
                        ));
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      fixedSize: Size(double.maxFinite, 50),
                      backgroundColor: Color(0xFFFFB800)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get OTP',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
