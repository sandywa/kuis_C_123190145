import 'package:flutter/material.dart';
import 'package:kuis_c_123190145/movie.dart';


class HomePage extends StatefulWidget {
  final DataMovie movieDetail;

  const HomePage({Key? key, required this.movieDetail}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(15),
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
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      color: _hasBeenPressed ? Colors.red : Colors.grey,
                      onPressed: () => {
                        setState(() {
                          _hasBeenPressed = !_hasBeenPressed;
                        })
                      },
                    ),
                    Text("${widget.movieDetail.popularity}"),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
