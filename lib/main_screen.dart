import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kuis_c_123190145/homepage.dart';
import 'package:kuis_c_123190145/movie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
            final DataMovie movie = getDataMovie[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage(movieDetail: movie);
                }));
              },

              child: Card(
                child: Column(
                  children: [
                    Image.network(movie.poster_path,width: 64,),
                    Text(movie.original_title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text(movie.release_date),
                    Text(movie.popularity.toString()),
                  ],
                ),
              ),
            );
          },
        itemCount: getDataMovie.length,
      ),
    );
  }
}
