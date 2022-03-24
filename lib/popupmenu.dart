import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPopUpMenuButton extends StatelessWidget {
  const MyPopUpMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (page) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => page as Widget));
        },
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Home'),
                textStyle: GoogleFonts.righteous(color: Colors.deepOrange),
                value: HomePage(),
              ),
              PopupMenuItem(
                  child: Text('Tela 2'),
                  textStyle: GoogleFonts.righteous(color: Colors.red),
                  value: Screen2()),
              PopupMenuItem(
                  child: Text('Tela 3'),
                  textStyle: GoogleFonts.righteous(color: Colors.green),
                  value: Screen3()),
            ]);
  }
}
