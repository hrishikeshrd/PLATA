import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:url_launcher/url_launcher.dart';




class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}
 
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.transparent,
         appBar: AppBar(
           automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.black,
            title:  Center(child: Text('Settings', style: TextStyle(color: Colors.white, fontSize: 25,letterSpacing: 0.5, fontWeight: FontWeight.w400),)),
            
              ),
        body: ListView(
          children: <Widget>[
            Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: Container(
                    height: 250,
                    width: 440,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage('assets/wp.jpg'),
                        fit: BoxFit.cover,
                      ),

                    ),
                    child: Container(
                    height: 300,
                    width: 440,
                    color: Colors.black38,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Exploring ',style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700, letterSpacing: 0.5),),
                               Text('PLATA',style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400, letterSpacing: 5),),
                              
                            ],
                         ),
                         Text('Consider giving us a tip.',style: TextStyle(color: Colors.white70, fontSize: 23,letterSpacing: 0.5, fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ),
                    ),

                  ),
                ),
              ),
              Container(
                height: 900,
              width: 500,
              color: Colors.black,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('INFO AND PREFERENCES', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w300,letterSpacing: 1),),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          

                            InkWell(
                            onTap: ()async{
                              launch('https://twitter.com/hrishikeshrd');
                            },
                            child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight:Radius.circular(20),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.twitter, color: Colors.blue,),
                                        SizedBox(width: 10,),
                                        Text('Twitter', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                          ),
                            ),

                           InkWell(
                              onTap: ()async{
                              launch('https://www.instagram.com/thetechabyteapp/');
                            },
                           
                           
                                                          child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                                   Container(
                                        height: 24,
                                        width: 24,
                                            decoration: BoxDecoration(
                                     image: DecorationImage(
                                   image: AssetImage('assets/in.jpg'),
                                    fit: BoxFit.fitWidth,
                      ),
                    ),
                    
                  ),
                                        SizedBox(width: 10,),
                                        Text('Instagram', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                          ),
                            ),
                           
                          InkWell(
                               onTap: ()async{
                              launch('mailto:thetechgeeksapp@gmail.com');
                            },
                            
                            child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.gmail, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('Gmail', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 440,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight:Radius.circular(0),
                              
                            ),
                            color: Colors.white10,),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(MdiIcons.vhs,color: Colors.white ,),
                                      SizedBox(width: 10,),
                                      Text('Version', style: TextStyle(color: Colors.white, fontSize: 19),),
                                    ],
                                    
                                  ),
                                  Text('1.0', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                          ),



                          SizedBox(height: 30,),

                          Text('DEVELOPER INFO', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w300,letterSpacing: 1),),
                          SizedBox(height: 20,),
                           InkWell(
                            onTap: ()async{
                              launch('https://twitter.com/hrishikeshrd');
                            },
                                                        child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight:Radius.circular(20),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.twitter, color: Colors.blue,),
                                        SizedBox(width: 10,),
                                        Text('Twitter', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                          ),
                           ),
                          

                           InkWell(
                             onTap: ()async{
                              launch('https://www.instagram.com/hrishikeshrd/');
                            },
                                                        child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                         Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/in.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    
                  ),SizedBox(width: 10,),
                                        Text('Instagram', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                          ),
                           ),
                           InkWell(
                             onTap: ()async{
                              launch('https://github.com/hrishikeshrd');
                            },
                                                        child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.github, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('GitHub', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                          ),
                           ),
                         InkWell(
                             onTap: ()async{
                              launch('https://hrishikeshdeshmukh3.wixsite.com/official');
                            },
                           
                                                    child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.webhook, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('Personal Website', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                         ),
                            InkWell(
                              onTap: ()async{
                              launch('https://www.linkedin.com/in/hrishikeshdeshmukh22/');
                            },

                                                                                                            child: Container(
                            height: 50,
                            width: 440,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight:Radius.circular(0),
                              
                            ),
                            color: Colors.white10,),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(MdiIcons.linkedin, color: Colors.blue,),
                                      SizedBox(width: 10,),
                                      Text('LinkedIn', style: TextStyle(color: Colors.white, fontSize: 19),),
                                    ],
                                    
                                  ),
                                  Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                                                     ),

                          SizedBox(height: 30,),
                          Text('CONTACT US', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w300,letterSpacing: 1),),
                          SizedBox(height: 20,),
                          
                          InkWell(
                            onTap: ()async{
                              launch('mailto:thetechgeeksapp@gmail.com');
                            },

                                                      child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight:Radius.circular(20),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.bug, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('Report Bugs', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()async{
                              launch('https://www.google.com/search?q=euro');
                            },
                                                      child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(MdiIcons.earHearing, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('Any Suggestions?', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          GestureDetector(
                          
                            child: Container(
                              height: 50,
                              width: 440,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight:Radius.circular(0),
                                
                              ),
                              color: Colors.white10,),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.group_add, color: Colors.white,),
                                        SizedBox(width: 10,),
                                        Text('Invite Your Friends', style: TextStyle(color: Colors.white, fontSize: 19),),
                                      ],
                                      
                                    ),
                                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                          ) ,
                          SizedBox(height: 10,),
                          Text('Invite Friends to download  PLATA', style: TextStyle(color: Colors.white70, fontSize: 16),),
                          SizedBox(height: 40,),

                        ],
                      ),
                      
                    ),
                  ),
                ],
              ),

            ),

            
            





          ],
        ),
      ),
    );
  }
}