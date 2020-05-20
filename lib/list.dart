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

  refresh(name) async{
    setState(() {
      loading(name);
    });
  }

  loading(name) async{
    setState(() {
      WebView(
        initialUrl: "https://www.google.com/search?q=$name+currency+rate",
        onWebViewCreated: (WebViewController webViewController ){
          _completer.complete(webViewController);
        },
      );

    });
  }


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
                          refresh(name);
                        });
                      },
                      child: Icon(MdiIcons.mapSearchOutline, color: Colors.white,)),
                ),
              ),
              Expanded(
                child:name == null? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/earth.jpg'),
                        fit: BoxFit.cover,

                      ),
                    ),

                ):loading(name),
              ),

            ],
          ),
        ),
      ),
    );
  }


}

