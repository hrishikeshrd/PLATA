import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';

class ListCurrency extends StatefulWidget {
  @override
  _ListCurrencyState createState() => _ListCurrencyState();
}

class _ListCurrencyState extends State<ListCurrency> {

  final fromController = TextEditingController( );
  String name;
  final Completer<WebViewController> _completer = Completer<WebViewController>();



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Center(child: Text('PLATA',style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 4, fontSize: 25),)),

        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white10,
                child: ListTile(
                  title: TextField(

                    style: TextStyle(color: Colors.white,),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: "Search Countries or Currency Name",
                      hintStyle: TextStyle(color: Colors.white70,),

                    ),


                    controller: fromController,
                  ),
                  trailing: GestureDetector(
                      onTap: (){
                        setState(() {
                          name= fromController.text;
                        });
                      },
                      child: Icon(MdiIcons.mapSearchOutline, color: Colors.white,)),
                ),
              ),
              Expanded(
                child:name == ""? Container(color:Colors.black):WebView(
                  initialUrl: "https://www.google.com/search?q=$name+currency+rate",
                  onWebViewCreated: (WebViewController webViewController ){
                    _completer.complete(webViewController);
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}

