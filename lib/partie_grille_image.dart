import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:streaming_emissions/identification_streaming.dart';

class PartieGrilleImage extends StatelessWidget {
  const PartieGrilleImage({super.key});

  final List<Map<String, String>> streamingData = const [
    {
      'tagStream': 'Streaming Documentaires',
      'imageStream': 'assets/images/news.jpg',
      'nomStream': 'Documentaires',
      'chaineRadio': 'Radio 4',
    },
    {
      'tagStream': 'Streaming Mode',
      'imageStream': 'assets/images/news.jpg',
      'nomStream': 'Tendances Mode',
      'chaineRadio': 'Radio 3',
    },
    {
      'tagStream': 'Streaming Enquêtes',
      'imageStream': 'assets/images/talkShow.jpg',
      'nomStream': 'Enquêtes Criminelles',
      'chaineRadio': 'Radio 2',
    },
    {
      'tagStream': 'Streaming Foot',
      'imageStream': 'assets/images/sport.jpg',
      'nomStream': 'Match de Foot',
      'chaineRadio': 'Radio 5',
    },
    {
      'tagStream': 'Streaming Mitio',
      'imageStream': 'assets/images/music.jpg',
      'nomStream': 'Streaming Mitio',
      'chaineRadio': 'Radio 1',
    },
    {
      'tagStream': 'Streaming News',
      'imageStream': 'assets/images/news.jpg',
      'nomStream': 'Que des news',
      'chaineRadio': 'Radio 4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 10,
      children: streamingData.map((data) {
        return IdentificationStreaming(
          tagStream: data['tagStream']!,
          imageStream: data['imageStream']!,
          nomStream: data['nomStream']!,
          chaineRadio: data['chaineRadio']!,
        );
      }).toList(),
    );
  }
}
