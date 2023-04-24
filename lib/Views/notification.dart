import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
          'Notification',
          style: GoogleFonts.montserrat(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(16),
            color: Color(0xFFFFB800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 160,
                      child: Text(
                        'Kaagaz Company pvt ltd',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/clock.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '21 Feb 2024',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
