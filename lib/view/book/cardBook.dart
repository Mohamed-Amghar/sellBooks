import 'package:app1/modul/Document.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardBook extends StatelessWidget {
  const CardBook(
      {Key? key,
      required this.image,
      required this.nameBookNet,
      required this.descriptionBookNet,
      required this.nameUser,
      required this.status})
      : super(key: key);
  final String image;
  final String nameBookNet;
  final String descriptionBookNet;
  final String nameUser;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        tileColor: const Color.fromARGB(255, 54, 53, 50),
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 75,
            minHeight: 75,
            maxWidth: 75,
            maxHeight: 75,
          ),
          child: Image.network(image, fit: BoxFit.cover),
        ),
        title: Text(
          nameBookNet,
          style: const TextStyle(
              fontFamily: "GeorgeCafeRegular",
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(descriptionBookNet,
                style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 10),
            Text("@$nameUser",
                style: const TextStyle(
                  color: Color.fromARGB(192, 240, 232, 232),
                )),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Text(status, style: TextStyle(color: Colors.white)),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}
