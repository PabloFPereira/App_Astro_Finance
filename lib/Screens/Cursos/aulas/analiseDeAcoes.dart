import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AnaliseDeAcoes extends StatefulWidget {
  @override
  _AnaliseDeAcoesState createState() => _AnaliseDeAcoesState();
}

class _AnaliseDeAcoesState extends State<AnaliseDeAcoes> {
  late YoutubePlayerController _controller;
  bool _bomSelected = false;
  bool _ruimSelected = false;
  bool _aulaConcluida = false;

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
        title: Text('Análise de Ações'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            YoutubePlayer(
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
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _aulaConcluida,
                  onChanged: (bool? value) {
                    setState(() {
                      _aulaConcluida = value ?? false;
                    });
                  },
                ),
                Text(
                  'Aula concluída',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Avalie o vídeo:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _bomSelected = true;
                      _ruimSelected = false;
                    });
                  },
                  icon: Icon(Icons.thumb_up, color: Colors.white),
                  label: Text(
                    'Bom',
                    style: TextStyle(
                        color: _bomSelected ? Colors.white : Colors.green),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _bomSelected ? Colors.green : Colors.transparent,
                    elevation: 0,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _bomSelected = false;
                      _ruimSelected = true;
                    });
                  },
                  icon: Icon(Icons.thumb_down, color: Colors.white),
                  label: Text(
                    'Ruim',
                    style: TextStyle(
                        color: _ruimSelected ? Colors.white : Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _ruimSelected ? Colors.red : Colors.transparent,
                    elevation: 0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Recomendações',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Adicione a lógica desejada aqui
                        },
                        child: Text('Aula 1',
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          // Adicione a lógica desejada aqui
                        },
                        child: Text('Aula 2',
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          // Adicione a lógica desejada aqui
                        },
                        child: Text('Aula 3',
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          // Adicione a lógica desejada aqui
                        },
                        child: Text('Aula 4',
                            style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          // Adicione a lógica desejada aqui
                        },
                        child: Text('Aula 5',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
