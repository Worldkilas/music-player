import 'package:flutter/material.dart';
import 'package:minimal_music_player/providers.dart/playslist_provider.dart';
import 'package:minimal_music_player/widgets/song_page/neumorphic_box.dart';
import 'package:minimal_music_player/widgets/song_page/playback_controls.dart';
import 'package:minimal_music_player/widgets/song_page/song_duration_progress.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
      //get playlist
      final playlist = value.playlist;

      //get current song index
      final currentSong = playlist[value.currentSongIndex ?? 0];

      //return scaffold UI
      return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            title: const Text(
              'SONGPAGE',
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              )
            ],
          ),
          body: Column(
            children: [
              //album artwork
              Center(
                child: NeuBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //image
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(currentSong.albumArtImagePath)),
                      //song artist and name
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //song artist and name
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentSong.artistName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(currentSong.songName)
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //song duration progress
              const SongDuration(),
              const SizedBox(
                height: 25,
              ),
              //playbackcontrol
              const PlaybackControls()
            ],
          ));
    });
  }
}
