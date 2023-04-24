import 'package:ariespaper/Views/newhomepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class supply extends StatefulWidget {
  const supply({super.key});

  @override
  State<supply> createState() => _supplyState();
}

class _supplyState extends State<supply> {
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
          'Select Suppliers',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10),
              child: Text(
                'Top suppliers',
                style: GoogleFonts.montserrat(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: Color(0xFFFFB800),
                      child: Image.asset('assets/home1.png'),
                    ),
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              border: Border.all(
                                color: Color(0xFFFFB800),
                              )),
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
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: true,
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    child: Image.asset(
                                      'assets/ytick.png',
                                      height: 15,
                                    ),
                                  ),
                                )
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
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: Color(0xFFFFB800),
                      child: Image.asset('assets/home2.png'),
                    ),
                    Expanded(
                      child: Container(
                          color: Color(0xFFFFF6DF),
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
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: false,
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    child: Image.asset(
                                      'assets/ytick.png',
                                      height: 15,
                                    ),
                                  ),
                                )
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
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: Color(0xFFFFB800),
                      child: Image.asset('assets/home3.png'),
                    ),
                    Expanded(
                      child: Container(
                          color: Color(0xFFFFF6DF),
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
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: false,
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    child: Image.asset(
                                      'assets/ytick.png',
                                      height: 15,
                                    ),
                                  ),
                                )
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
              child: SizedBox(
                height: 90,
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: Color(0xFFFFB800),
                      child: Image.asset('assets/home1.png'),
                    ),
                    Expanded(
                      child: Container(
                          color: Color(0xFFFFF6DF),
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
                                      'Paper Landmarks ltd',
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
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Visibility(
                                    visible: false,
                                    maintainSize: true,
                                    maintainAnimation: true,
                                    maintainState: true,
                                    child: Image.asset(
                                      'assets/ytick.png',
                                      height: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 20),
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: Add logic for handling button press
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => newhome(),
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
                          'Select & Back ',
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
