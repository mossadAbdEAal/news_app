class Articlemodel
{
  final String? imagepath;
  final String? title;
  final String? subtitle;
  final String? url;

  Articlemodel({required this.imagepath,required this.title,required this.subtitle,required this.url});
  
  factory Articlemodel.fromjson(json){
    return Articlemodel(
      imagepath: json['urlToImage'], 
      title: json['title'], 
      subtitle: json['description'],
      url: json['url'],
      );
  }


}