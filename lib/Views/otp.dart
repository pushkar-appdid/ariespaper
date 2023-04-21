import 'package:ariespaper/Views/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  String otp = '';
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
          'OTP',
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
                'One-Time Password (OTP) Verification for Aries Paper App',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Protect Your Account and Gain Access to Multiple Paper Seller Companies',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.montserrat(fontSize: 12, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {
                    setState(() {
                      otp = value;
                    });
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeFillColor: Colors.white,
                    activeColor: Color(0xFFFFB800),
                    inactiveColor: Color(0xFFFFB800),
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    selectedColor: Color(0xFFFFB800),
                  ),
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: OutlinedButton(
                  onPressed: () {
                    // TODO: Add logic for handling button press
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signup(),
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
                        'Verified',
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
