import 'pop.dart';
import 'package:flutter/material.dart';
import 'ArticleView.dart';
import 'articlemodel.dart';
import 'getnews.dart';

class Newss extends StatefulWidget {
  @override
  _NewssState createState() => _NewssState();
}

class _NewssState extends State<Newss> {
List<ArticleModel> articles = new List<ArticleModel>();

  bool _loading = true;

  @override
  void initState(){
    super.initState();
    getNews();
  } 
  
  
  getNews()async{
    News newsClass= News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading= false;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/wall.jpg'),
          fit: BoxFit.fill
        )
      ),
      child: Scaffold (
        backgroundColor: Colors.black,
       appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('PLATA', style: TextStyle(color: Colors.white, fontSize: 25,letterSpacing: 5, fontWeight: FontWeight.w400,),),
                  ],
              ),
              
                ),
        body:Container(
         
          child: _loading ? Center(
          child: Container(
            child: CircularProgressIndicator(
               backgroundColor: Colors.white,
            ),
          ),
        ) : Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
         
         child:    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: ListView.builder(
                        shrinkWrap:  true,
                        itemCount: articles.length,
                        itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: BlogTile(
                                imageUrl: articles[index].urlToImage,
                                title: articles[index].title,
                                desc: articles[index].description,
                                url: articles[index].url,

                              ),
                            );

                        }
                        
                        ),
                    ),
                  
              
        ),
        
      ),),
    );
  }
}

class BlogTile extends StatelessWidget {

  final String imageUrl,title, desc,url;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc,@required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
             builder: (context) => ArticleView(
                blogUrl: url,
             ) 
            ));
          },
      onLongPress:(){ showDialog(
        context: context,
        builder: (context) => Container(child: PopView(
          blogUrl: url,
        )
        )
        
        );

        
          },
          
          child: Container(

        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(imageUrl)),
            SizedBox(height: 5,),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
            Text(desc,style: TextStyle(color: Colors.white70,fontSize: 16, fontWeight: FontWeight.w400,),),
          ],
        ),
      ),
    );
  }
}