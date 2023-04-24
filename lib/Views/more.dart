import 'package:ariespaper/Views/aboutUs.dart';
import 'package:ariespaper/Views/supplier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class more extends StatelessWidget {
  const more({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color(0xFFFFF6DE),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 53),
                Image.asset(
                  'assets/logo2.png',
                  height: 68,
                ),
                SizedBox(height: 25),
                SizedBox(height: 20),
                SizedBox(
                  height: 23,
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFFF5F5F5),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/d7.png'),
                  title: Text('About Us'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/d8.png'),
                  title: Text('Contact Us'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/d1.png'),
                  title: Text('Place Orders'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => about(),
                        ));
                  },
                  leading: Image.asset('assets/d6.png'),
                  title: Text('Rate Us'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/d9.png'),
                  title: Text('Privacy policy '),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/d10.png'),
                  title: Text('Term and conditions'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
                ListTile(
                  dense: true,
                  leading: Image.asset('assets/Logout.png'),
                  title: Text('Log Out'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF5F5F5),
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text('Version 1.1',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(fontSize: 14)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
