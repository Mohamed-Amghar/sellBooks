import 'package:flutter/material.dart';
import 'dart:collection';

class Customer extends ChangeNotifier {
  String nameUser;
  String description;
  String network;
  int prix;
  String userPhoto;
  String lafac;
  String title;
  String city;
  String imageBook;
  String nameBook;
  String descriptionBook;
  bool accesBook;

  Customer({
    required this.nameUser,
    required this.description,
    required this.userPhoto,
    required this.network,
    required this.prix,
    required this.lafac,
    required this.title,
    required this.city,
    required this.imageBook,
    required this.nameBook,
    required this.descriptionBook,
    required this.accesBook,
  });
}

List<Customer> customerInfo = [
  Customer(
    accesBook: true,
    nameBook: "anta li",
    descriptionBook: "hello its me",
    title: "macdo-title",
    nameUser: "mohamed",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test test test test test test test test test test test test',
    network:
        'https://images.pexels.com/photos/1333742/pexels-photo-1333742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 150,
    lafac: "ensa",
    city: 'tanger',
    imageBook:
        'https://images.pexels.com/photos/3747163/pexels-photo-3747163.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "kon Kha2in",
    descriptionBook: "hello its me",
    title: "third-title",
    nameUser: "AYMANE EDD",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/261970/pexels-photo-261970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 320,
    lafac: "ensias",
    city: 'rabat',
    imageBook:
        'https://images.pexels.com/photos/2002217/pexels-photo-2002217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "goerj wassof",
    descriptionBook: "hello its me",
    title: "first-title",
    nameUser: "soufian amg",
    userPhoto:
        "https://images.pexels.com/photos/257013/pexels-photo-257013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/257013/pexels-photo-257013.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 140,
    lafac: "facultes de science",
    city: 'tanger',
    imageBook:
        'https://images.pexels.com/photos/406153/pexels-photo-406153.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "i love my bussines",
    descriptionBook: "hello its me",
    title: "first-title",
    nameUser: "khadija merjani",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/261970/pexels-photo-261970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 140,
    lafac: "facultes de science",
    city: 'tanger',
    imageBook:
        'https://images.pexels.com/photos/406153/pexels-photo-406153.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: false,
    nameBook: "anta li",
    descriptionBook: "hello its me",
    title: "first-title",
    nameUser: "salwa yes",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/771326/pexels-photo-771326.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 140,
    lafac: "facultes de science",
    city: 'tanger',
    imageBook:
        'https://images.pexels.com/photos/4039747/pexels-photo-4039747.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "anta li",
    descriptionBook: "hello its me",
    title: "second-title",
    nameUser: "anas atlati",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test sddd test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/208219/pexels-photo-208219.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    prix: 80,
    lafac: "fs tetouan",
    city: 'meknes',
    imageBook:
        'https://images.pexels.com/photos/2002217/pexels-photo-2002217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "i love u",
    descriptionBook: "hello its me",
    title: "second-title",
    nameUser: "adnane",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test sddd test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/4300396/pexels-photo-4300396.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 80,
    lafac: "fs tetouan",
    city: 'meknes',
    imageBook:
        'https://images.pexels.com/photos/2002217/pexels-photo-2002217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ),
  Customer(
    accesBook: true,
    nameBook: "your to me",
    descriptionBook: "nice book",
    title: "second-title",
    nameUser: "adil tawfiq",
    userPhoto:
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    description:
        'description test sddd test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/208219/pexels-photo-208219.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    prix: 80,
    lafac: "fs tetouan",
    city: 'meknes',
    imageBook:
        'https://images.pexels.com/photos/208219/pexels-photo-208219.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
  )
];
