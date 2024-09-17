import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/webview.dart';

// ignore: must_be_immutable
class Newsitem extends StatelessWidget {
  Newsitem({super.key, required this.articlemodel});
  
  Articlemodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WebViewApp(url: articlemodel.url);
              }));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                height: 200,
                width: double.infinity,
                imageUrl: articlemodel.imagepath != null ? '${articlemodel.imagepath}' :'https://st4.depositphotos.com/1069957/19980/i/450/depositphotos_199807442-stock-photo-word-error-binary-computer-code.jpg' ,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
            
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              articlemodel.title != null ? '${articlemodel.title}' : 'Title is Removed',
              style: const TextStyle(
                 
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              maxLines: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              articlemodel.subtitle != null ? '${articlemodel.subtitle}' : 'Subtitle is Removed',
              style: const TextStyle(
                 
                  overflow: TextOverflow.ellipsis,
                  fontSize: 12),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
