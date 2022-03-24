import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

String headerImg =
    "https://as1.ftcdn.net/v2/jpg/03/00/33/28/500_F_300332890_BUlvN5CHcowRXl0G1xox0mgKFZS1ozsq.jpg";
String avatarImg =
    "https://as2.ftcdn.net/v2/jpg/02/83/63/59/500_F_283635971_GMtbV8kCURcl0HsRLOhoeZKkbo7cTnlZ.jpg";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(image: NetworkImage(headerImg)),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(avatarImg),
                ),
                SizedBox(height: 30),
                Text(
                  "Atividade 7 - Adilson Monteiro",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.indigo,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(5.0, 0),
                            blurRadius: 20,
                            color: Colors.black),
                        Shadow(
                          offset: Offset(5.0, 0),
                          blurRadius: 2.0,
                          color: Colors.white,
                        ),
                      ]),
                )
              ],
            ),
          ),
          ListTile(
              hoverColor: Colors.pink,
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomePage()))),
          ListTile(
              hoverColor: Colors.pink,
              leading: Icon(Icons.account_circle),
              title: Text("Tela 2"),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Screen2()))),
          ListTile(
              hoverColor: Colors.pink,
              leading: Icon(Icons.add_a_photo_outlined),
              title: Text("Tela 3"),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Screen3()))),
        ],
      ),
    );
  }
}
