import 'package:app1/model/documentss.dart';
import 'package:app1/view/appBar.dart';
import 'package:app1/view/widgets/btnWidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailPerson extends StatefulWidget {
  const DetailPerson({Key? key, required this.querySnapshot}) : super(key: key);
  final querySnapshot;

  @override
  State<DetailPerson> createState() => _DetailPersonState();
}

class _DetailPersonState extends State<DetailPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(title: "Detail"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                for (int i = 0; i < widget.querySnapshot.images.length; i++)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget.querySnapshot.images[i].toString(),
                      fit: BoxFit.cover,
                      height: 300,
                      width: 350,
                    ),
                  ),
              ],
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text("Detail post   ",
                        style: TextStyle(
                            fontFamily: 'GeorgeCafeRegular', fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        const Text("User                  : ",
                            style: TextStyle(
                                fontFamily: 'GeorgeCafeRegular',
                                fontSize: 15,
                                color: Colors.grey)),
                        Text(widget.querySnapshot.user.name.toString(),
                            style: const TextStyle(
                                fontFamily: 'GeorgeCafeRegular', fontSize: 15)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        const Text("Etablissment   : ",
                            style: TextStyle(
                                fontFamily: 'GeorgeCafeRegular',
                                fontSize: 15,
                                color: Colors.grey)),
                        Expanded(
                          child: Text(
                              widget.querySnapshot.etablissement.name
                                  .toString(),
                              style: const TextStyle(
                                  fontFamily: 'GeorgeCafeRegular',
                                  fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        const Text("Ville                  : ",
                            style: TextStyle(
                                fontFamily: 'GeorgeCafeRegular',
                                fontSize: 15,
                                color: Colors.grey)),
                        Expanded(
                          child: Text(widget.querySnapshot.city.name.toString(),
                              style: const TextStyle(
                                  fontFamily: 'GeorgeCafeRegular',
                                  fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        const Text("description     : ",
                            style: TextStyle(
                                fontFamily: 'GeorgeCafeRegular',
                                fontSize: 15,
                                color: Colors.grey)),
                        Expanded(
                          child: Text(
                              widget.querySnapshot.description.toString(),
                              style: const TextStyle(
                                  fontFamily: 'GeorgeCafeRegular',
                                  fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  ButtonWidget(titreBtn: 'Chat NOW'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
