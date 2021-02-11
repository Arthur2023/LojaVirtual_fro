import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual_gatos/Screens/CategoryScreen.dart';

class CategoryTile extends StatelessWidget {

  final DocumentSnapshot snapshot;

  CategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
    leading: CircleAvatar(
    radius: 25,
    backgroundColor: Colors.transparent,
    backgroundImage: NetworkImage(snapshot.data["Icon"]),
    ),
    title: Text(snapshot.data["title"]),
    trailing: Icon(Icons.keyboard_arrow_right),
    onTap: (){
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context)=>CategoryScreen(snapshot),),);
    }
  );
}}
    