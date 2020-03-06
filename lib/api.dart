import 'netWork.dart';

const String userURL = 'http://10.128.7.12:38080/mi/user';
const String crashList = 'http://10.128.7.12:38080/mi/user';

class APMAPI {
  Future<dynamic> getUserURL() {
    NetWork net = NetWork('$userURL');
    var userData = net.getData();
    return userData;
  }

}