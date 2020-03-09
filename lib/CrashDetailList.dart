import 'dart:convert';
import 'package:flutter/material.dart';

class CrashDetailListClass extends StatefulWidget {
  @override
  _CatInfoState createState() => _CatInfoState();
}

class _CatInfoState extends State<CrashDetailListClass> {
  @override
  void initState() {
    super.initState();
    // getCatData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("崩溃详情"),
        ),
        // body: getCat());
    );}

}