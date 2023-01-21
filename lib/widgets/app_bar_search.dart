// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppSearchBar extends SearchDelegate<String> {
  final products = ['TV', 'Teclado', 'Macbook', 'Notebook', 'IPhone'];

  final recentSearches = ['Macbook', 'Notebook', 'IPhone'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
            close(context, query);
          },
          icon: Icon(Icons.cancel))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          query = '';
          close(context, query);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Resultado para a pesquisa: $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = query.isEmpty ? recentSearches : products;

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.youtube_searched_for),
          title: Text(results[index]),
          onTap: () {
            // ignore: avoid_print
            print(results[index]);
          },
        );
      },
    );
  }
}
