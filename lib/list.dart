import 'dart:developer';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListCurrency extends StatefulWidget {
  @override
  _ListCurrencyState createState() => _ListCurrencyState();
}

class _ListCurrencyState extends State<ListCurrency> {
  List currencies ;
  

  @override
  void initState(){
    super.initState();
    _loadcCurrencies();
  }

  Future<String> _loadcCurrencies() async{
    String uri = "https://api.exchangeratesapi.io/latest";
    var response =await http.get(Uri.encodeFull(uri), headers: {"Accept": "application/json"});
    var responseBody = json.decode(response.body);
    Map curMap = responseBody['rates'];

    currencies = curMap.keys.toList();
    setState(() {
      
    });
    print(currencies);
    return "Success";
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(child: Text('PLATA',style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 4, fontSize: 25),)),
      ),
      body: currencies == null ? Container(
        color: Colors.black,
        child: Center(
          child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                  ),
        ),
      ):
      
      
       _rates(),
      ),
    );
  }
  Widget _rates(){
      return new ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context,index){
          
          return Container(
            child: Row(
            children: <Widget>[
            ClipRRect(
              child: currencies[index],
            ),
        ],
      ),
          );
        },

        
      );
  }

 
  }
