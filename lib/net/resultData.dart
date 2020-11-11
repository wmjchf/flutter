class ResultData {
  dynamic data;
  bool isSuccess;
  int code;
  dynamic headers;

  ResultData(this.data, this.isSuccess, this.code, {this.headers});
  @override
  String toString() {
    // TODO: implement toString
    String str = "{data:${data},isSuccess:${isSuccess},code:${code},headers:headers";
    return str;
  }
}
