import 'package:flutter/material.dart';
import 'package:minimal_music_player/pages/song_page.dart';
import 'package:minimal_music_player/providers.dart/playslist_provider.dart';
import 'package:minimal_music_player/widgets/homepage_widgets/custom_drawer.dart';
import 'package:provider/provider.dart';

import '../models/songs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          centerTitle: true,
          title: const Text(
            'PLAYLISTS',
            style: TextStyle(letterSpacing: 4),
          ),
        ),
        drawer: const MyDrawer(),
        body: Consumer<PlaylistProvider>(builder: (context, value, child) {
          //get the playlist
          final List<Song> playlist = value.playlist;
          //return list view UI
          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                //get individual song
                final Song song = playlist[index];

                //return list tile UI nested in an inkwell
                return InkWell(
                  onTap: () {
                    value.goToSong();
                    //navigate
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SongPage()));
                  },
                  child: ListTile(
                    title: Text(song.songName),
                    subtitle: Text(song.artistName),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(song.albumArtImagePath),
                    ),
                  ),
                );
              });
        }));
  }
}
