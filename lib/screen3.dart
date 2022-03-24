import 'package:flutter/material.dart';
import 'popupmenu.dart';
import 'drawer.dart';


class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  String image =
      "https://as1.ftcdn.net/v2/jpg/03/18/39/16/500_F_318391699_7siphNxXgYQx9CzjxN7Hnm8u6d5itwnr.jpg";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Atividade 7 - Adilson Monteiro"), actions: [
        MyPopUpMenuButton()
      ]),
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
