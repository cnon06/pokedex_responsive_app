import 'package:flutter/material.dart';
import 'package:pokemon/services/pokeApi.dart';
import 'package:pokemon/widgets/app_title.dart';
import 'package:pokemon/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemondata();
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) 
      => Scaffold(
          
          body: Column(
            children: const [
              AppTitle(),
              Expanded(child: PokemonList()),
            ],
          ),
      ),
    );
  }
}
