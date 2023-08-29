import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dev/202/service/HarryPotterservice/hp_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hpRepositoryProvider = Provider((ref) => HpRepository());

class HpRepository {
  Future<List<HpCharacters>> fetchHpCharacters() async {
    final response =
        await Dio().get('https://hp-api.onrender.com/api/characters');
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        final hpList = data.map((e) => HpCharacters.fromJson(e)).toList();

        return hpList;
      }
    }
    return []; // Return an empty list in case of error or invalid data
  }
}


/* class HpRepository {
  final Dio dio;

  HpRepository() : dio = Dio();

  get image => null;

  Future<List<HpCharacters>> fetchPostItems() async {
    final response =
        await dio.get('https://hp-api.onrender.com/api/characters');
    return (response.data as List)
        .map((character) => HpCharacters.fromJson(character))
        .toList();
  }

  String get name => 'HpRepository';
}
 */
/* class HpRepository {
  final Ref ref;

  HpRepository(this.ref);
  Future<User> fetchUserData(String input) {
    var url = 'https://jsonplaceholder.typicode.com/users/$input';
    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  }
} */