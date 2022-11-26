import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/widgets/pokelist_item.dart';

import '../models/model.dart';
import '../services/pokeApi.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  final ScrollController _controller =
      ScrollController(initialScrollOffset: 0.06.sh);
  late Future<List<PokemonModel>> _futureGetPokemonData;
  @override
  void initState() {
    _futureGetPokemonData = PokeApi.getPokemondata();
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureGetPokemonData,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> list = snapshot.data;

          return GridView.builder(
            controller: _controller,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) {
                return PokeListItem(
                  pokoModel: list[index],
                );
              });

          // return ListView.builder(
          //     itemCount: _list.length,
          //     itemBuilder: (context, index) {
          //       return PokeListItem(pokoModel: _list[index],);
          //       // return ListTile(title:  Text(_list[index].name.toString())  ,);
          //     });
        } else if (snapshot.hasError) {
          return const Text("Hata oluştu");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
