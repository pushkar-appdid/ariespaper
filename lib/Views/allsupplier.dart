import 'package:ariespaper/Views/newhomepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class allsupply extends StatefulWidget {
  const allsupply({super.key});

  @override
  State<allsupply> createState() => _allsupplyState();
}

class _allsupplyState extends State<allsupply> {
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
          'All Suppliers',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                color: Color(0xFFFFF6DF),
                height: 90,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/home2.png',
                      height: 90,
                      width: 90,
                    ),
                    VerticalDivider(
                      color: Color(0xFFFFB800),
                      endIndent: 10,
                      indent: 10,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF6DF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Paper Landmarks',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Rate : ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '4 ₹',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFFFB800),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Maharashtra, thane ',
                                      style:
                                          GoogleFonts.montserrat(fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                color: Color(0xFFFFF6DF),
                height: 90,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/home2.png',
                      height: 90,
                      width: 90,
                    ),
                    VerticalDivider(
                      color: Color(0xFFFFB800),
                      endIndent: 10,
                      indent: 10,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF6DF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dummy Company pvt ltd',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Rate : ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '4 ₹',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFFFB800),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Maharashtra, thane ',
                                      style:
                                          GoogleFonts.montserrat(fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                color: Color(0xFFFFF6DF),
                height: 90,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/home3.png',
                      height: 90,
                      width: 90,
                    ),
                    VerticalDivider(
                      color: Color(0xFFFFB800),
                      endIndent: 10,
                      indent: 10,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF6DF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kaagaz Company pvt ltd',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Rate : ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '4 ₹',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFFFB800),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Maharashtra, thane ',
                                      style:
                                          GoogleFonts.montserrat(fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                color: Color(0xFFFFF6DF),
                height: 90,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/home1.png',
                      height: 90,
                      width: 90,
                    ),
                    VerticalDivider(
                      color: Color(0xFFFFB800),
                      endIndent: 10,
                      indent: 10,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF6DF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Paper Landmarks',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Rate : ',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '4 ₹',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFFFB800),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Maharashtra, thane ',
                                      style:
                                          GoogleFonts.montserrat(fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
