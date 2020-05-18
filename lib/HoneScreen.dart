import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final fromController = TextEditingController( );
  List<String> currencies;
  String fromCurrency = "USD";
  String toCurrency = "INR";
  String result;

  @override
  void initState(){
    super.initState();
    _loadCurrencies();
  }

  Future<String> _loadCurrencies() async{
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

  Future<String> _doConversion() async {
    String uri = "https://api.exchangeratesapi.io/latest?base=$fromCurrency&symbols=$toCurrency";
    var response =await http.get(Uri.encodeFull(uri), headers: {"Accept": "application/json"});
    var responseBody = json.decode(response.body);
    
    setState(() {

      result = (double.parse(fromController.text) * (responseBody['rates'][toCurrency])).toString();
    });
    print(result);
    return "Success";
  }


  _onFromChanged(String value){

    setState(() {
      fromCurrency = value;
    });
  }

  _onToChanged(String value){

    setState(() {
      toCurrency = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ) :
          
          Container(
        height: double.infinity,
        width: double.infinity,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              height: 350,
              width: 500,
              decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 50),
                    child: Container(
                      width: 400,
                      
                      child: Card(
                        color: Colors.black,
                        child: ListTile(
                         title: TextField(
                           
                            style: TextStyle(color: Colors.white,),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                               hintText: "Amount",
                               hintStyle: TextStyle(color: Colors.white70,),
                               
                            ),
                            
                            
                            controller: fromController,
                            keyboardType: TextInputType.numberWithOptions(decimal: true,),
                          ),
                          trailing: _buildDropDownButton(fromCurrency),
                        ),
                      ),

                      
                    ),
                  ),
                  GestureDetector(
                    onTap: _doConversion,
                                      child: CircleAvatar(
                      backgroundColor: Colors.white ,
                      radius: 45,
                      child:Text("CONVERT", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800, letterSpacing: 1),)
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 380,
                    child: ListTile(
                           title:Chip(label: result != null ?
                           
                           Text(result ,style: TextStyle(fontSize: 33 , color: Colors.white),): Text("0.0",style: TextStyle(fontSize: 33 , color: Colors.white),),backgroundColor: Colors.black,elevation: 0,),
                            trailing: _buildDropDownButton(toCurrency),
                          ),
                  ),
                ],
              ),
              
            ),
          ),
        ],
      ),
        
      ),
    );
  }

  Widget _buildDropDownButton(String currencyCatagory){

  return DropdownButton(
    dropdownColor: Colors.black,
    value: currencyCatagory,
    items: currencies.map((String value)=> DropdownMenuItem(
      value: value,
      child: Row(
        children: <Widget>[
          Text(value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900,letterSpacing: 0.3),),
        ],
      ),
    )).toList(),
    onChanged: (String value){
      if(currencyCatagory == fromCurrency)
      {
      _onFromChanged(value);
      }
      else
      {
        _onToChanged(value);
      }
    },
  );
}




}