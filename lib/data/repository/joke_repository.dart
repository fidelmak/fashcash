import 'package:fashcash/data/models/joke_models.dart';
import 'package:http/http.dart' as http;

import '../dataproviders/joke_providers.dart';

class JokeRepository {
  final JokeProviders provider ;

  JokeRepository({required this.provider});

  Future<JokesModel> getJoke() async {
    final response = await provider.getJokes();
    return JokesModel.fromJson(response);

  }
}