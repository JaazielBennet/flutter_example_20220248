import 'package:flutter/material.dart'; //Se está importando una paquetería al código

void main() {
  //El método main que está siendo acompañado por un void el cuál nos está mandando una expresión que no devuelve un valor
  runApp(const MyApp()); //Este es un método que está iniciando la aplicación
}

class MyApp extends StatelessWidget {
  //Es la clase principal de la aplicación
  const MyApp(
      {super.key}); //Se está definiendo una constante de la clase de la aplicación

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Esto es un método que nos está construyendo la interfaz de la aplicación
    return MaterialApp(
      //Nos está devolviendo la clase MaterialApp para configurar la apariencia de la aplicación
      title: 'Flutter Demo', //Estamos creando un objeto
      theme: ThemeData(
        //De igual forma se está creando un objeto
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors
                .deepPurple), //Está agregando una clase que dará un color (creo que a la aplicación)
        useMaterial3:
            true, //Se está utilizando un booleano para utilizar un diseño
      ),
      home: const MyHomePage(
          title:
              'Flutter Demo Home Page'), //Se está haciendo que esta instancia sea constante así que su valor no cambiará en la aplicación
    );
  }
}

class MyHomePage extends StatefulWidget {
  /*Se está declarando la clase MyHomePage (que es la página principal) y la cuál está heredando a la otra clase StatefulWidget 
permitiendo así que MyHomePage tenga un estado asociado al StatefulWidget */
  const MyHomePage(
      {super.key,
      required this.title}); //Se está creando una instancia constante en la página principal de la aplicación y de ello estamos definiendo uan clase base

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); //En el createState se está declarando un método para crear una nueva instancia del estado la cual es _MyHomePageState
}

class _MyHomePageState extends State<MyHomePage> {
  //Derivado de lo anterior, ahora estamos heredando la clase State<MyHomePage> al _MyHomePageState
  int _counter =
      0; //Se está declarando e iniciando una variable de tipo entero llamada _counter y está iniciando un operador que empieza desde 0

  void _incrementCounter() {
    //Como primera parte tenemos un void que no está devolviendo ningún valor y como segunda parte se está declarando un método llamado _incrementCounter
    setState(() {
      //Se está proporcionando un método de la clase State
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++; //Estamos incrementando el valor de la variable en 1
    });
  }

  @override
  Widget build(BuildContext context) {
    //Este método se ejecuta cada que se llama desde el setState
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //Se está devolviendo un valor con el return
      appBar: AppBar(
        //
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, //Se está declarando la clase que le da un color al fondo y la está tomando de la página principal(MyHomePage)
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              //Se está declarando un texto constante el cuál es "Has apretado el botón estas veces: "
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', //Se incluye el valor de una variable que se convierte a string
              style:
                  Theme.of(context).textTheme.headlineMedium, //Estilo de texto
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Está agragando un botón
        onPressed:
            _incrementCounter, //Se declara una función que actúa cuando se presiona, en este caso el botón
        tooltip: 'Increment', //Herramienta para incrementar
        child: const Icon(
            Icons.add), //Esto creo que el algo sobre una interfaz de iconos
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
