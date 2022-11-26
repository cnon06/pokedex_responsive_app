

// ignore_for_file: file_names

import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/model.dart';

class PokeApi {
  // ignore: prefer_final_fields
  static String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getPokemondata() async {
    var response = await Dio().get(_url);
    var pokeJson = jsonDecode(response.data)["pokemon"];
    // print(pokeJson);
    List<PokemonModel> list = [];  
    if (pokeJson is List) {
      list = pokeJson.toList().map((e) => PokemonModel.fromJson(e)).toList();
    }
    return list;
  }
}
