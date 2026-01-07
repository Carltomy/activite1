import 'package:flutter/material.dart';

void main() {
  runApp(MonAppli());
}

class MonAppli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Magazine Infos', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/images/magazineInfo.jpg'),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
      ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Votre magazine numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Magazine Infos est un magazine numérique moderne qui propose des articles variés sur la culture, la technologie, la mode et l’actualité.',
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _itemIcon(Icons.phone, 'TEL'),
          _itemIcon(Icons.email, 'EMAIL'),
          _itemIcon(Icons.share, 'PARTAGE'),
        ],
      ),
    );
  }

  Widget _itemIcon(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.pink),
        SizedBox(height: 5),
        Text(text, style: TextStyle(color: Colors.pink)),
      ],
    );
  }
}

class PartieRubrique extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/press.jpg'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/mode.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
