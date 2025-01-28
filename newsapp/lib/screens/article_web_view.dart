import 'package:flutter/material.dart';
import 'package:newsapp/components/home_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatefulWidget {
  final String articleLink;
  const ArticleWebView({super.key, required this.articleLink});

  @override
  // ignore: library_private_types_in_public_api
  _ArticleWebViewState createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.articleLink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffE7DEF1),
        elevation: 0,
        title: HomeAppBar(),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
