import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: SizedBox(
                    child: Image.asset("assets/images/about1.png"),
                  ),
                ),
                SizedBox(height: 49),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/about2.png",
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Aldo Wiranata",
                            style: TextStyle(
                              color: Color(0xff141E28),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 33),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: SizedBox(
                      width: 311,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TECHNOLOGY"),
                          SizedBox(height: 9),
                          Text(
                            "To build responsibly, tech needs to do more than just hire chief ethics officers",
                            style: GoogleFonts.poppins(fontSize: 22),
                          ),
                          SizedBox(height: 9),
                          Text("17 June, 2023 — 4:49 PM"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 66),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: SizedBox(
                      width: 311,
                      child: Column(
                        children: [
                          Text(
                            "I the last couple of years, we’ve seen new teams in tech companies emerge that focus on responsible innovation, digit al well-being, AI ethics or humane use. Whatever their titles, these individuals are given the task of “leading” ethics at their companies.",
                            style: GoogleFonts.poppins(fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
