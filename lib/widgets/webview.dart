import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


// ignore: must_be_immutable
class WebViewApp extends StatefulWidget {
   final String? url;
   const WebViewApp({super.key,required this.url});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('${widget.url}'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        title: const Text('Flutter WebView',style: TextStyle(color: Colors.white),),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}