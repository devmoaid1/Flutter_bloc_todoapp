class Task {
  int id;
  String title;
  String subTitle;

  Task({this.id, this.title, this.subTitle});

  Task.copy(Task from) : this(title: from.title, subTitle: from.subTitle);

  Task.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], title: json['title'], subTitle: json['subTitle']);

  Map<String, dynamic> toJson() => {'title': title, 'subTitle': subTitle};
}
