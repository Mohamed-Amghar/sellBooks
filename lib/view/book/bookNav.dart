import 'package:app1/modul/Document.dart';
import 'package:app1/view/book/cardBook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appBar.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarComponent(
          title: 'Books',
        ),
        body: ListView.builder(
          itemCount: customerInfo.length,
          itemBuilder: (context, index) {
            Customer customer = customerInfo[index];
            if (customer.accesBook) {
              return CardBook(
                descriptionBookNet: customer.descriptionBook,
                image: customer.imageBook,
                nameBookNet: customer.nameBook.toUpperCase(),
                nameUser: customer.nameUser,
                status: "boon",
              );
            } else {
              return SizedBox(
                height: 0,
              );
            }
          },
        ));
  }
}
