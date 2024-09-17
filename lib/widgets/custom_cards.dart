import 'package:flutter/material.dart';
import 'package:news_app/views/category_page_view.dart';
// ignore: must_be_immutable
class Cards extends StatelessWidget {
  Cards({super.key, required this.imagepath, required this.text});
  String? imagepath;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Categorylistview(category: '$text');
              },
            ),
          );
        },
        child: Container(
          width: 185,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('$imagepath'), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              '$text',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
