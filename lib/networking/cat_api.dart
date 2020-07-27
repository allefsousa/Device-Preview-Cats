

import 'networking.dart';

const String apiKey = 'dba76508-7c45-43a0-9324-4a3e621a3cb0';
//1
const String catAPIURL = 'https://api.thecatapi.com/v1/breeds?';
// 2
const String catImageAPIURL = 'https://api.thecatapi.com/v1/images/search?';
// 3
const String breedString = 'breed_id=';
// 4
const String apiKeyString = 'x-api-key=$apiKey';

class CatApi{

  Future<dynamic> getCatBreeds() async {
    // 6
    Networking network = Networking('$catAPIURL$apiKeyString');
    // 7
    var catData = await network.getData();
    return catData;
  }

  Future<dynamic> getCatBreed(String breedName) async {
    Networking network =
    Networking('$catImageAPIURL$breedString$breedName&$apiKeyString');
    var catData = await network.getData();
    return catData;
  }
}