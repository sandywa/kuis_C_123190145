import 'package:flutter/material.dart';
import 'package:kuis_c_123190145/movie.dart';


class HomePage extends StatefulWidget {
  final DataMovie movieDetail;

  const HomePage({Key? key, required this.movieDetail}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Image.network(widget.movieDetail.poster_path, width: 200),
                      Text(
                        "${widget.movieDetail.title}",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
              ),
              ),
              Container(
                child: Row(
                  children: [
                    // IconButton(onPressed: , icon: Icon(Icons.favorite)).
                    Text(
                        "Release Date   : ${widget.movieDetail.release_date}\n"
                            "Language       : ${widget.movieDetail.original_language}\n"
                            "Popularity     : ${widget.movieDetail.popularity}\n"
                            "Vote Count     : ${widget.movieDetail.vote_count}\n"
                            "Vote Average   : ${widget.movieDetail.vote_average}\n"


                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text("Original Title : ",style:  TextStyle(fontWeight: FontWeight.bold),),
                    Text("${widget.movieDetail.release_date}"),
                    Text("Description    : ",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("${widget.movieDetail.overview}")
                    
                  ],
                ),
              ),
            ],
      ),
    );
  }


}