


import 'package:flutter/material.dart';



class Mysearch extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
        close(context, null);
        }
        else {
          query = '';
        }
      }
    )];
  }

  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(onPressed: ()=> close(context, null), icon: const Icon(Icons.arrow_back));


  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64,fontWeight: FontWeight.bold),
    ),
  );


  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
   return Container();
  }

}


