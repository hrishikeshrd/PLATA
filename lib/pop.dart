import 'dart:async';

import 'HoneScreen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PopView extends StatefulWidget {
  
  final String blogUrl;
  PopView({this.blogUrl});
  
  @override
  _PopViewState createState() => _PopViewState();
}

class _PopViewState extends State<PopView> {

  final Completer<WebViewController> _completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.transparent,
     height: double.infinity,
     
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            
            
            
            body: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pop(context,new MaterialPageRoute(builder: (_) => HomeScreen(),),),

                                    child: Container(
                                      height:120,
                                      width: 440,
                                      color: Colors.transparent,
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0,0, 0),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                                      child: Container(
                          height: 500,
                          width: 440,
                          
                        child: WebView(
                          initialUrl: widget.blogUrl ,
                          onWebViewCreated: (WebViewController webViewController ){
                            _completer.complete(webViewController);
                          },
                        ),
          ),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () => Navigator.pop(context,new MaterialPageRoute(builder: (_) => HomeScreen(),),),

                                    child: Container(
                                      height: 120,
                                      width: 440,
                                      color: Colors.transparent,
                      
                    ),
                  ),
                  
                ],
              ),
            )),
        ),
      ),
    );
  }
}