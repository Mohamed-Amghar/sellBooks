import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.imageNet,
      required this.titreNet,
      required this.nameUserNet,
      required this.photoNet,
      required this.facu,
      required this.city,
      required this.setDetail})
      : super(key: key);
  final String imageNet;
  final String titreNet;
  final String photoNet;
  final String nameUserNet;
  final String facu;
  final String city;
  final Function setDetail;
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      SizedBox(
        width: 200,
        height: 210,
        child: InkWell(
          onTap: () {
            setDetail();
          },
          child: Card(
            color: Colors.transparent,
            shadowColor: Color.fromARGB(69, 228, 212, 212),
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Ink.image(
                        height: 120,
                        image: NetworkImage(imageNet),
                        fit: BoxFit.cover),
                  ],
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.only(left: 2.0, right: 0.0),
                  leading: Transform.translate(
                    offset: Offset(0, 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(photoNet),
                    ),
                  ),
                  title: Transform.translate(
                    offset: Offset(-19, 1),
                    child: Column(
                      children: [
                        Text(titreNet,
                            style: const TextStyle(
                                fontFamily: "GeorgeCafeRegular", fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, left: 15),
                          child: Text(
                            "$city $facu",
                            style: const TextStyle(
                                fontSize: 10, fontFamily: "GeorgeCafe"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Transform.translate(
                    offset: Offset(-8, 10),
                    child: Text(
                      "@$nameUserNet.".toUpperCase(),
                      style: const TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
