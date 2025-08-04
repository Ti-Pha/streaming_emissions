import 'package:flutter/material.dart';

class AlbumStreaming extends StatelessWidget {
  final String tagStream;
  final String imageStream;
  final String nomStream;
  final String chaineRadio;

  const AlbumStreaming({
    super.key,
    required this.tagStream,
    required this.imageStream,
    required this.nomStream,
    required this.chaineRadio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(nomStream),
              background: Hero(
                tag: tagStream,
                child: Image.asset(imageStream, fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return ListTile(
                leading: const Icon(Icons.volume_up),
                title: Text('Diffusion ${index + 1}'),
                subtitle: Text(
                  'Date: 2024-${(index + 1).toString().padLeft(2, '0')}-22',
                ),
              );
            }, childCount: 5),
          ),
        ],
      ),
    );
  }
}
