import 'package:flutter/material.dart';
import 'package:minimal_music_player/models/songs.dart';

class PlaylistProvider extends ChangeNotifier {
  //playlists of songs
  final List<Song> _playlist = [
    // Song 1
    Song(
        songName: 'Suge',
        artistName: 'Dababy ft. Nicki Minaj',
        albumArtImagePath: 'lib/assets/images/suge.jpg',
        audioPath: 'lib/assets/audios/Nicki_Minaj_-_Suge_DaBaby_Remix_.mp3'),
    //Song 2
    Song(
        songName: 'Good for ou',
        artistName: 'Olivia Rodrigo',
        albumArtImagePath: 'lib/assets/images/good for you.jpg',
        audioPath: 'lib/assets/audios/Olivia-Rodrigo-good-4-u.mp3'),

    //Song 3
    Song(
        songName: 'Superheroes and villains',
        artistName: 'Metro Boomin',
        albumArtImagePath: 'lib/assets/images/hreoes and villains.jpg',
        audioPath:
            'lib/assets/audios/Metro-Boomin-Superhero-Heroes--Villains.mp3'),
    //song 4
    Song(
        songName: 'Animals',
        artistName: 'Maroon 5',
        albumArtImagePath: 'lib/assets/images/Animals.jpg',
        audioPath: 'lib/assets/audios/Maroon-5-Animals.mp3')
  ];

  //tracking current song
  int? _currentSongIndex;
  /*

  G E T T E R S

  */
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*
  
  S E T T E R S

  */
  set currentSongIndex(int? newIndex) {
    //update curret song index
    _currentSongIndex = newIndex;
    //update UI
    notifyListeners();
  }

  //go to a song
  void goToSong() {
    int? songIndex;
    //update current song index
    _currentSongIndex = songIndex;

    //notify listeners about changes in the data
    notifyListeners();
  }
}
