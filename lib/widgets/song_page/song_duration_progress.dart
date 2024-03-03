import 'package:flutter/material.dart';

class SongDuration extends StatelessWidget {
  const SongDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //start tiime
              Text('0:00'),
              //shuffle icon
              Icon(Icons.shuffle),

              //repeat icon
              Icon(Icons.repeat),
              //end time
              Text('0:00')
            ],
          ),
        ),
        //song duration progress
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0)),
          child: Slider(
              min: 0,
              max: 100,
              activeColor: Colors.green,
              value: 50,
              onChanged: (value) {}),
        )
      ],
    );
  }
}
