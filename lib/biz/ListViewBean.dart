class ListViewBean{

  String _name;
  String _age;
  String _sex;

  ListViewBean(this._name, this._age, this._sex);

  String get sex => _sex;

  set sex(String value) {
    _sex = value;
  }

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}