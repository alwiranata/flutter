import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_6/home.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.only(
              top: 135,
              left: 21,
              right: 20,
            ),
            child: Image.asset(
              'assets/images/icon.png',
              width: 352,
              height: 330,
            ),
          ),
          SizedBox(height: 42),
          Text(
            '''Yuk, Membaca Bersama
            PM News''',
            style: GoogleFonts.arimo(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Berita Terpercaya , Di Ujung Jari Anda",
            style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 39),
          SizedBox(
            width: 354,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3498DB),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("Masuk"),
            ),
          ),
          SizedBox(height: 21),
          SizedBox(
            width: 354,
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF3498DB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text("Mendaftar"),
            ),
          ),
        ],
      ),
    );
  }
}
