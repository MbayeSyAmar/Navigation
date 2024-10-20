// Importation du package Flutter nécessaire pour créer des interfaces utilisateur
import 'package:flutter/material.dart';

// Fonction principale de l'application, point d'entrée
void main() {
  // runApp lance l'application Flutter en exécutant le widget MyApp
  runApp(MyApp());
}

// MyApp est un StatelessWidget (ne change pas d'état)
class MyApp extends StatelessWidget {

  // La méthode build est utilisée pour construire l'interface utilisateur
  @override
  Widget build(BuildContext context) {
    // MaterialApp est le widget de base pour une application Material Design
    return MaterialApp(
      // La propriété home définit l'écran principal (FirstScreen)
      home: FirstScreen(),
    );
  }
}

// Première classe d'écran (FirstScreen) qui est également un StatelessWidget
class FirstScreen extends StatelessWidget {

  // La méthode build construit l'interface utilisateur du premier écran
  @override
  Widget build(BuildContext context) {
    // Scaffold fournit la structure de base d'une page (AppBar, body, etc.)
    return Scaffold(
      // AppBar pour afficher une barre d'application avec un titre
      appBar: AppBar(title: Text('First Screen')),
      // Le corps (body) de la page, ici un widget centré
      body: Center(
        // ElevatedButton est un bouton surélevé avec du texte
        child: ElevatedButton(
          // onPressed est la fonction appelée quand on appuie sur le bouton
          onPressed: () {
            // Navigator.push permet de naviguer vers un nouvel écran
            Navigator.push(
              context, // Le contexte actuel de l'application
              // MaterialPageRoute crée la transition vers un autre écran (SecondScreen)
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          // Le texte affiché sur le bouton
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

// Deuxième classe d'écran (SecondScreen), également un StatelessWidget
class SecondScreen extends StatelessWidget {

  // La méthode build construit l'interface utilisateur du second écran
  @override
  Widget build(BuildContext context) {
    // Scaffold fournit la structure de base de la page (comme FirstScreen)
    return Scaffold(
      // AppBar pour afficher la barre d'application avec un titre
      appBar: AppBar(title: Text('Second Screen')),
      // Le corps de la page avec un widget centré
      body: Center(
        // Un bouton surélevé pour permettre à l'utilisateur de revenir en arrière
        child: ElevatedButton(
          // onPressed est la fonction appelée quand on appuie sur ce bouton
          onPressed: () {
            // Navigator.pop permet de revenir à l'écran précédent
            Navigator.pop(context);
          },
          // Texte affiché sur le bouton
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
