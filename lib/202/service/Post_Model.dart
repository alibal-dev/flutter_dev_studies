class PostModel {
  String? title;
  String? body;
  int? userId;

  PostModel({this.title, this.body, this.userId});

  PostModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    userId = json['userId'];
  }
//kod yazılmaz
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['body'] = this.body;
    data['userId'] = this.userId;
    return data;
  }
}
