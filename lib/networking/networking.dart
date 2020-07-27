import 'package:http/http.dart';

class Networking {
  final String url;

  Networking(this.url);

  Future getData() async{

    Response response = await get(url);

    if(response.statusCode == 200){
      return response.body;
    }else{
      print(response.statusCode);
    }


  }


}