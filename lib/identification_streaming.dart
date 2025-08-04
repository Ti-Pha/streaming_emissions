import 'package:flutter/material.dart';
import 'package:streaming_emissions/album_streaming.dart';

class IdentificationStreaming extends StatelessWidget {
  final String tagStream;
  final String imageStream;
  final String nomStream;
  final String chaineRadio;

  const IdentificationStreaming({
    super.key,
    required this.tagStream,
    required this.imageStream,
    required this.nomStream,
    required this.chaineRadio,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumStreaming(
              tagStream: tagStream,
              imageStream: imageStream,
              nomStream: nomStream,
              chaineRadio: chaineRadio,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Hero(
                  tag: tagStream,
                  child: Image.asset(imageStream, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nomStream,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      chaineRadio,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
