import 'package:flutter/material.dart';
import 'package:streaming_emissions/partie_grille_image.dart';

class MaPremierePage extends StatefulWidget {
  const MaPremierePage({super.key});

  @override
  _MaPremierePageState createState() => _MaPremierePageState();
}

class _MaPremierePageState extends State<MaPremierePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Vos émissions en streaming'),
        actions: const <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.menu), onPressed: null),
        ],
      ),
      body: const PartieGrilleImage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Recherche'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
