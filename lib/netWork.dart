import 'package:http/http.dart';

class NetWork {
  final String url;

  NetWork(this.url);

  Future getData() async {
    print('Calling url: $url');
    Response response = await get(url);
    if (response.statusCode == 200) {
      return response.body;
    }else {
      int code = response.statusCode;
      print('request error code: $code');
    }
  }

}