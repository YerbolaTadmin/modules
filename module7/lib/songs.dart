class Songs{
  String? name;
  String? link;
  String? about;

  Songs({this.name,this.link,this.about});

  Songs.fromJson(Map<String,dynamic> json) {
    name = json['name'];
    link = json['link'];
    about = json['about'];
  }
}