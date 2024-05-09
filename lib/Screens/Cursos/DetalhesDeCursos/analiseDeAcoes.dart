import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerPage extends StatefulWidget {
  @override
  _YoutubePlayerPageState createState() => _YoutubePlayerPageState();
}

class _YoutubePlayerPageState extends State<YoutubePlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'mcDqMo2NJdM',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Player'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
          onReady: () {
            // Adicione a lógica desejada aqui
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
