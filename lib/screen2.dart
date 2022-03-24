import 'package:atividade7/popupmenu.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String image =
      "https://as2.ftcdn.net/v2/jpg/01/10/01/69/500_F_110016941_EHxXpJQ9FjGzwfqWQfyVSn84UfXO7FxB.jpg";

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
            color: Colors.redAccent,
            child: Image(
              image: NetworkImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
