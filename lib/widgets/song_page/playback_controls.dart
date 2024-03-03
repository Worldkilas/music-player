import 'package:flutter/material.dart';
import 'package:minimal_music_player/widgets/song_page/neumorphic_box.dart';

class PlaybackControls extends StatelessWidget {
  const PlaybackControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //skip previous
        Expanded(
            child: NeuBox(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.skip_previous)))),
        Expanded(
            flex: 2,
            child: NeuBox(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.play_arrow)))),
        Expanded(
            child: NeuBox(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.skip_next))))
      ],
    );
  }
}
