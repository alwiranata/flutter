import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 2, 20),

      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        title: Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 0, 2, 20),
        foregroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(color: Colors.white, height: 1),
        ),
      ),

      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/img/Anime.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Aldo Wiranata",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Text("Mobile Developer", style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              Text(
                "Coding is not just about writing programs, but creating solutions. The learning process is the key to continuous growth.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontFamily: "poppins"),
              ),

              SizedBox(height: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Contact Me",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "+62 823 6439 5027",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: const Color.fromARGB(255, 254, 255, 255),
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "aldowiranata@gmail.com",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 2, 20),
                ),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.white,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 20,
                        color: const Color.fromARGB(59, 255, 255, 255),
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 1)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,

          showSelectedLabels: false,
          showUnselectedLabels: false,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chevron_left), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          ],
        ),
      ),
    );
  }
}
