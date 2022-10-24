import 'dart:convert';

import 'package:app1/model/documentss.dart';
import 'package:app1/view/home/detail.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../model/api.dart';
import '../../model/wether.dart';
import '../../modul/Document.dart';
import 'cardWidget.dart';

class ListCard extends StatefulWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  late Future<documentss> postData;

  @override
  initState() {
    super.initState();
    postData = getPostId();
  }

  Future<documentss> getPostId() async {
    http.Response futurePost =
        await http.get(Uri.parse('http://146.190.232.192:8010/api/document'));
    if (futurePost.statusCode == 200) {
      print(futurePost.body);
      return documentss.fromJson(json.decode(futurePost.body));
    } else {
      throw Exception('cant load');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<documentss>(
      future: postData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                mainAxisSpacing: 19.0,
              ),
              itemCount: snapshot.data!.documents!.length,
              itemBuilder: (context, index) {
                Customer customer = customerInfo[index];
                return CardWidget(
                  imageNet:
                      snapshot.data!.documents![index].images![0].toString(),
                  nameUserNet:
                      snapshot.data!.documents![index].user!.name.toString(),
                  titreNet: snapshot.data!.documents![index].name.toString(),
                  photoNet:
                      snapshot.data!.documents![index].user!.image.toString(),
                  city: snapshot.data!.documents![index].city!.name.toString(),
                  facu: snapshot.data!.documents![index].etablissement!.name
                      .toString(),
                  setDetail: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPerson(
                                querySnapshot:
                                    snapshot.data!.documents![index])));
                  },
                );
              });
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
/*GridView.builder(
        shrinkWrap: true,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          mainAxisSpacing: 19.0,
        ),
        itemCount: customerInfo.length,
        itemBuilder: (context, index) {
          Customer customer = customerInfo[index];
          return CardWidget(
            imageNet: customer.network,
            nameUserNet: customer.nameUser,
            titreNet: customer.title,
            photoNet: customer.userPhoto,
            city: customer.city,
            facu: customer.lafac,
            setDetail: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPerson(customer: customer)));
            },
          );
        })*/