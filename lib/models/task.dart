class Task {
  int id;
  String title;
  String subTitle;

  Task({this.id, this.title, this.subTitle});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subTitle = json['subTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subTitle'] = this.subTitle;
    return data;
  }
}
