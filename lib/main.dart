import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Home Work',
      theme: ThemeData(
          primarySwatch: primaryBlack,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
            headline4: TextStyle(color: Colors.white),
          )),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const BoxDecoration greyCircle = BoxDecoration(
  color: Colors.grey,
  shape: BoxShape.circle,
);

const BoxDecoration orangeCircle = BoxDecoration(
  color: Colors.orange,
  shape: BoxShape.circle,
);

const BoxDecoration blackCircle = BoxDecoration(
  color: Color.fromARGB(255, 56, 53, 49),
  shape: BoxShape.circle,
);

const BoxDecoration blueCircle = BoxDecoration(
  color: Colors.blue,
  shape: BoxShape.circle,
);

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Text(
                '$_counter',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  children: <Widget>[
                    Container(
                      decoration: greyCircle,
                      alignment: Alignment.center,
                      child: const Text("C", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: greyCircle,
                      alignment: Alignment.center,
                      child: const Text("+/-", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: greyCircle,
                      alignment: Alignment.center,
                      child: const Text("%", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: orangeCircle,
                      alignment: Alignment.center,
                      child: const Text("/", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("7", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("8", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("9", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: orangeCircle,
                      alignment: Alignment.center,
                      child: const Text("x", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("4", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("5", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("6", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: orangeCircle,
                      alignment: Alignment.center,
                      child: const Text("-", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("1", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("2", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: blackCircle,
                      alignment: Alignment.center,
                      child: const Text("3", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      decoration: orangeCircle,
                      alignment: Alignment.center,
                      child: const Text("+", style: TextStyle(fontSize: 30)),
                    ),
                  ]),
            ),
            SizedBox(
              height: 100,
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      decoration: blueCircle,
                      alignment: Alignment.center,
                      child: const Text("0", style: TextStyle(fontSize: 30)),
                    ),
                    GridView.count(
                        primary: false,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            decoration: blueCircle,
                            alignment: Alignment.center,
                            child:
                                const Text(".", style: TextStyle(fontSize: 30)),
                          ),
                          Container(
                            decoration: orangeCircle,
                            alignment: Alignment.center,
                            child:
                                const Text("=", style: TextStyle(fontSize: 30)),
                          ),
                        ]),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
