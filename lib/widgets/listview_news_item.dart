import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'package:news_app/widgets/custom_new.dart';


// ignore: must_be_immutable
class Listviewnewsitem extends StatelessWidget {
  Listviewnewsitem({super.key,required this.articles});

  List<Articlemodel> articles=[];
  

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Newsitem(articlemodel: articles[index],);
        },
      ),
    );
  }
}
