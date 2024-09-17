import 'package:flutter/material.dart';
import 'package:news_app/views/news_page.dart';

void main() {
  runApp(const Newsapp());
}

class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Newspage(),
    );
  }
}
