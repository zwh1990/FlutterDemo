

class JsonListBean {
  String message;
  String code;
  var result;

  JsonListBean.fromJson(Map<String, dynamic> map)
      : message = map['message'],
        code = map['code'],
        result = map['result'];
}
