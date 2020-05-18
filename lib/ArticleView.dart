import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  
  final String blogUrl;
  ArticleView({this.blogUrl});
  
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(

      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            
              elevation: 0,
              backgroundColor: Colors.transparent,
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('PLATA', style: TextStyle(color: Colors.white, fontSize: 25,letterSpacing: 4, fontWeight: FontWeight.w400,),),
                ],
              ),
              
                ),
        
        
        body: Container(
        child: WebView(
          initialUrl: widget.blogUrl ,
          onWebViewCreated: (WebViewController webViewController ){
            _completer.complete(webViewController);
          },
        ),
      )),
    );
  }
}