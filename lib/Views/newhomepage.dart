import 'package:ariespaper/Views/aboutUs.dart';
import 'package:ariespaper/Views/signup.dart';
import 'package:ariespaper/Views/supplier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class newhome extends StatefulWidget {
  const newhome({super.key});

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
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
    var size = MediaQuery.of(context).size;
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => supply(),
                          ));
                    },
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
          'Jeetendra Kulhe',
          style: GoogleFonts.montserrat(color: Colors.black, fontSize: 16),
        ),
        actions: [Image.asset('assets/bell.png')],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Stack(alignment: AlignmentDirectional.center, children: [
                  Image.asset(
                    'assets/offer.png',
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Godawari pulp and paper',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Top paper provider',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 8, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ]);
              },
              options: CarouselOptions(
                height: 100,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                },
                viewportFraction: 0.7,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              padding: EdgeInsets.all(10),
              width: size.width,
              color: Color(0xFF393943),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Payment Terms - any payment overdue more than 5 days Interest will be applicable 18%p.a',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Color(0xFFFFB800),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Image.asset(
                    'assets/invoice.png',
                    width: 130,
                    height: 113,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Options',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                  )),
            ),
            IntrinsicHeight(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                padding: EdgeInsets.only(top: 16, left: 14, right: 5),
                width: size.width,
                color: Color(0xFFFFB800),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/menu.png',
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 6),
                          child: Text(
                            'Placed Orders',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 135,
                          child: Text(
                            'Streamline Your Procurement Process with the User-Friendly Order Placement System on the Aries Paper App',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/survey.png',
                      height: 170,
                    )
                  ],
                ),
              ),
            ),
            IntrinsicHeight(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                padding: EdgeInsets.only(
                  top: 16,
                  left: 14,
                ),
                width: size.width,
                color: Color(0xFFEEEEEE),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/ezgif.png',
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 6),
                          child: SizedBox(
                            width: 120,
                            child: Text(
                              'Check exiting Orders Details',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 135,
                          child: Text(
                            'Check Existing Orders and Keep Track of Your Paper Purchases on the Aries App',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/note.png',
                      height: 160,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
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
