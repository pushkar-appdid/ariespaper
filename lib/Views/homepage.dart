import 'package:ariespaper/Views/aboutUs.dart';
import 'package:ariespaper/Views/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Orders'),
    Text('More'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
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
                  Text(
                    'Jeetendrakulhe@gmail.com',
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Jeetendra kulhe',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      fixedSize: Size(266, 40),
                      backgroundColor: Color(0xFFFFB800),
                    ),
                    child: Text(
                      'View Profile',
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.black),
                    ),
                  ),
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
                    leading: Image.asset('assets/d1.png'),
                    title: Text('Place Orders'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d2.png'),
                    title: Text('Check Existing Orders'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d3.png'),
                    title: Text('Invoices'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d4.png'),
                    title: Text('Outstanding'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d5.png'),
                    title: Text('All Suppliers'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d6.png'),
                    title: Text('Rate US'),
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
                    leading: Image.asset('assets/d7.png'),
                    title: Text('About US'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset('assets/d8.png'),
                    title: Text('Contact US'),
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
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFB800),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Aries Paper Company',
          style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        actions: [Image.asset('assets/bell.png')],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 16,
          ),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                height: 50,
                child: Image.asset(
                  'assets/offer.png',
                  fit: BoxFit.fill,
                ),
              );
            },
            options: CarouselOptions(
              height: 100,
              enlargeCenterPage: true,
              // aspectRatio: 9 / 16,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentImageIndex = index;
                });
              },
              viewportFraction: 0.7,
            ),
          ),
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
                                    'Paper Landmarks',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Maharashtra, thane ',
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  )
                                ],
                              ),
                              Image.asset('assets/Bookmark.png')
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
                                  Text(
                                    'Maharashtra, thane ',
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  )
                                ],
                              ),
                              Image.asset('assets/Bookmark.png')
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
                                  Text(
                                    'Maharashtra, thane ',
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  )
                                ],
                              ),
                              Image.asset('assets/Bookmark.png')
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
                                  Text(
                                    'Maharashtra, thane ',
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  )
                                ],
                              ),
                              Image.asset('assets/Bookmark.png')
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
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        backgroundColor: Color(0xFFFFF6DE),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/more.png'),
            activeIcon: Image.asset(
              'assets/more.png',
              color: Colors.black,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
