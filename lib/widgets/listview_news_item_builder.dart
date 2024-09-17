import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/getnews.dart';
import 'package:news_app/widgets/listview_news_item.dart';

// ignore: must_be_immutable
class Listviewitembuilder extends StatefulWidget {
   Listviewitembuilder({super.key,required this.category});
  String? category;
  @override
  State<Listviewitembuilder> createState() => _ListviewitembuilderState();
}

class _ListviewitembuilderState extends State<Listviewitembuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var  future;

  @override
  void initState() {
    future = Newsservices().getnews('${widget.category}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Listviewnewsitem(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(
                  child: Text(
                      'oops there was an error ,try later${snapshot.error}')),
            );
          } else {
            return const SliverFillRemaining(
                child: Center(
                    child: Center(
                        child: CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 2,
            ))));
          }
        });
  }
}
