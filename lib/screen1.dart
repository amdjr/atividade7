import 'package:atividade7/popupmenu.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'popupmenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image =
      "https://as2.ftcdn.net/v2/jpg/01/38/04/83/500_F_138048305_CzU34ghNKoajVNQX0Ehp8xr5OBaihqWk.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Atividade 7 - Adilson Monteiro"),
          actions: [MyPopUpMenuButton()]),
      drawer: MyDrawer(),
      body: Center(
        child: SizedBox(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Image(image: NetworkImage(image)),
          ),
        ),
      ),
    );
  }
}
