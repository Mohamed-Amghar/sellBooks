import 'package:app1/view/appBar.dart';
import 'package:app1/view/home/listCard.dart';
import 'package:app1/view/home/partie1.dart';
import 'package:flutter/material.dart';

import '../../modul/Document.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarComponent(
          title: 'Home',
        ),
        body: Column(
          children: const [
            Partie1(),
            Expanded(child: ListCard()),
          ],
        ));
  }
}
