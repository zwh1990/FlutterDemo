class ListViewBean {
  String name;
  String age;
  String sex;

  ListViewBean({this.name, this.age, this.sex});

  factory  ListViewBean.fromJson(Map<String, dynamic> json){
    return ListViewBean(
      name: json['name'],
      age: json['age'],
      sex: json['sex']);
  }
}
