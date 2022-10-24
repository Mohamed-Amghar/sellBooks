import 'package:app1/view/profile/favorite.dart';
import 'package:app1/view/widgets/btnWidget.dart';
import 'package:flutter/material.dart';

import '../../modul/Document.dart';
import '../appBar.dart';

class ProfileNav extends StatefulWidget {
  const ProfileNav({Key? key}) : super(key: key);

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    Customer customer = customerInfo[1];
    return Scaffold(
        appBar: AppBarComponent(
          title: 'Profile',
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  iconSize: 40,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritePage()));
                  },
                ),
              ),
            ),
            Center(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(customer.userPhoto),
                  radius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    customer.nameUser,
                    style: const TextStyle(
                        fontFamily: "GeorgeCafeRegular", fontSize: 20),
                  ),
                ),
                const ButtonWidget(
                  titreBtn: 'Add Document',
                ),
                const ButtonWidget(
                  titreBtn: 'Add Book',
                ),
              ],
            )),
          ],
        ));
  }
}
