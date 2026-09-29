import 'package:flutter/material.dart';

void main() {
  //main() : le debut de l'application
  runApp(const MyApp());
  // runApp() : lance l'application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
 // MaterialApp : prepare l'application
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.pink),
      ),
      home: const MyHomePage(title: 'Mon premier projet - Rimen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState() : met l'ecran a jour quand quelque chose change
      _counter++;
    });
  }
  void _decrementCounter() {
  setState(() {
    if (_counter > 0) {
      _counter--;
    }
  });
}
void _resetCounter() {
  setState(() {
    _counter = 0;
  });
}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       // Scaffold : cree la structure de la page
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
     floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'dec',
          onPressed: _decrementCounter,
          child: const Icon(Icons.remove),
        ),

        const SizedBox(width: 10),

        FloatingActionButton(
          heroTag: 'reset',
          onPressed: _resetCounter,
          child: const Icon(Icons.refresh),
        ),

        const SizedBox(width: 10),

        FloatingActionButton(
          heroTag: 'inc',
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ],
    ),
  );
}

//lib/ :contient le code d'application
//android/ : contient les fichiers pour Android
//web/ : contient les fichiers pour le Web
//pubspec.yaml : contient les informations du projet et les packages utilisés
}