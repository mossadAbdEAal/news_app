import 'package:flutter/material.dart';
import 'package:news_app/widgets/listview_news_item_builder.dart';
// ignore: must_be_immutable
class Categorylistview extends StatelessWidget {
  Categorylistview({super.key,required this.category});
  String? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
       
        title:  Center(
          child: Text(
            '$category',
            style: const TextStyle(
                
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: CustomScrollView(physics:const BouncingScrollPhysics(), slivers: [
        Listviewitembuilder(category: '$category',),
      ]));
  }
}
