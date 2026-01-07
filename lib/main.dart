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
        backgroundColor: Colors.bleu,
        title: Text('Magazine Infos'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: IconButton(icon: Icon(Icons.search), onPressed: () {}),
      ),
      body: Column(
        children[
         Image.asset('assets/images/magazineInfo.jpg')
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
  Widget build(BuildContext context){
    return Container(
      Widget: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignement: CrossAxisAlignement.start,
        children: [
          Text(
            'Bienvenue au Magazin Infos',
            style: Textstyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Votre Magazine numérique, votre source d'inspiration",
           style: Textstyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  }
}

class PartieTexte extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Magazine Infos est un magazine numérique moderne qui propose des articles variés sur la culture, la technologie, la mode et l’actualité. Il s’adresse à tous les passionnés de lecture.',
        style: Textstyle(
          fontSize: 15,
        ),
      ),
    ),
  }
}
class PartieIcone extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
     padding: EdgeInsets.only(bottom:10),
     child : Row(
       mainAxiAlignement: MainAxiAlignement.spaceEvenly,
       children: [
         _itemIcon(Icons.phone, 'TEL'),
         _itemIcon(Icons.email, 'EMAIL'),
         _itemIcon(Icons.share, 'PATAGE'),
        ],
      ),
    ),
  }
  Widget _itemIcon(IconData icon, String text) {
  return Column(
    children: [
      Icon(icon, color :Colors.pink),
      SizedBox(height: 5),
      Text(
        text,
        style: TextStyle(color: Colors.pink),
        ),
      ],
    ),
  }
class PartieRubrique extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding : EdgeInsets.symetric(horizontal: 20),
      child: Row(
       children[
         Expanded(
           child: ClipRRect(
            borderRadius : BorderRaduis.circular(10),
            child: Image.asset('assert/images/press.jpg'),
           ),
          ),
          SizedBox(width :10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRaduis.circular(10),
              child : Image.asset('assets/images/mode.jpg'),
            ),
          ),
        ],
      ),
    ),
  }
}
