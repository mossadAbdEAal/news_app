import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_cards.dart';
import 'package:news_app/widgets/listview_news_item_builder.dart';

class Newspage extends StatefulWidget {
  const Newspage({super.key});

  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
    
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style:
                  TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Color.fromARGB(255, 67, 204, 4),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: Listviewcards(),
        ),
        Listviewitembuilder(category: 'general',),
       
      ]),
    );
  }
}
