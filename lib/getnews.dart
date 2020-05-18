import 'articlemodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class News{
  List<ArticleModel> news = [];
  
  Future<void> getNews() async{
      String url ="http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=92b1e17e4699484489d869a90d121f20";
      
      var response = await http.get(url);

      var jsonData = jsonDecode(response.body);
      
      if(jsonData["status"] == "ok"){
        jsonData["articles"].forEach((element){


          if(element["description"]!= null){
            ArticleModel articleModel= ArticleModel(
              title: element["title"],
              author: element["author"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              
            );
            news.add(articleModel); 
            
          }
        });
      }


  }
  Future<void> getSciNews() async{
      String url ="http://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=364f1e38a70741efbf15b3300d0f7db1";
      
      var response = await http.get(url);

      var jsonData = jsonDecode(response.body);
      
      if(jsonData["status"] == "ok"){
        jsonData["articles"].forEach((element){


          if(element["description"]!= null){
            ArticleModel articleModel= ArticleModel(
              title: element["title"],
              author: element["author"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              
            );
            news.add(articleModel); 
            
          }
        });
      }


  }
}

