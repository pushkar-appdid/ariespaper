import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB800),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 43,
              ),
              Image.asset(
                'assets/logo2.png',
                height: 110,
              ),
              SizedBox(
                height: 49,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About us',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Paper Landmark is a paper company that specializes in producing high-quality paper products for a variety of purposes. The company was founded in 1998 by John Smith, a seasoned paper industry veteran with over 30 years of experience. Since its inception, Paper Landmark has grown to become one of the leading paper manufacturers in the United States, with a reputation for quality, reliability, and innovation. The company offers a wide range of paper products, including printing and writing paper, specialty papers such as coated and textured papers, and packaging materials such as cardboard and corrugated boxes. Paper Landmark's products are used by businesses and consumers alike, and can be found in offices, schools, and homes across the country. Paper Landmark takes pride in its commitment to sustainability, and has implemented a number of environmentally-friendly practices in its operations. The company uses recycled materials whenever possible, and has invested in state-of-the-art equipment and processes that minimize waste and energy consumption.",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400, fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              OutlinedButton(
                onPressed: () {
                  // TODO: Add logic for handling button press
                },
                style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    fixedSize: Size(double.maxFinite, 50),
                    backgroundColor: Color(0xFFFFB800)),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              OutlinedButton(
                onPressed: () {
                  // TODO: Add logic for handling button press
                },
                style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    fixedSize: Size(double.maxFinite, 50),
                    backgroundColor: Color(0xFFFFB800)),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
