import 'package:flutter/material.dart';
import 'package:minimal_music_player/widgets/homepage_widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PLAYLISTS',
          style: TextStyle(letterSpacing: 4),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
