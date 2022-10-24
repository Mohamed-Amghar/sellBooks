import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.titreBtn}) : super(key: key);
  final String titreBtn;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.all(10),
      // ignore: deprecated_member_use
      child: ElevatedButton(onPressed: () {}, child: Text(titreBtn)),
    );
  }
}
