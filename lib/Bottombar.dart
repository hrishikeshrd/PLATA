import 'list.dart';
import 'new.dart';
import 'HoneScreen.dart';
import 'settings.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScreens extends StatefulWidget{
  @override
  _MainScreensState createState() => _MainScreensState();
}


class _MainScreensState extends State<MainScreens>{
  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage; 
  
  HomeScreen homeScreen;
  ListCurrency listCurrency;
  Newss newss;
  SettingsScreen settingsScreen;
  
  @override
  void initState() {
    super.initState();
    homeScreen = HomeScreen();
    listCurrency = ListCurrency();
    newss = Newss();
    settingsScreen = SettingsScreen();

    pages = [homeScreen,listCurrency,newss,settingsScreen];

    currentPage = homeScreen;
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        
        elevation: 0,
        backgroundColor:Colors.black,

        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed, 

 
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.bank,color: Colors.white,),
            title: Text("Converter", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) 
            ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.stackExchange,color: Colors.white,),
            title: Text("Live Rates",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) 
            ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.newspaper,color: Colors.white,),
            title: Text("Daily Feed",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), 
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            title: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) 
            )
          
          
          ],
      ),
      body: currentPage,
        
    );
  }
}