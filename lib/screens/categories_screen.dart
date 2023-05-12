import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text("Categories"),
      ),
      body: Center(child: Text("Welcome to Categorize Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.ad),
      ),
    );
  }
}
