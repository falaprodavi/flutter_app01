import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage:
        NetworkImage('https://avatars.githubusercontent.com/u/56851807?v=4'),
    radius: 90,
  );

  final nome = const Text("Davi Firmino",
      style: TextStyle(
        fontSize: 30,
      ),
      textAlign: TextAlign.center);

  final botaoTelefone = IconButton(
    color: Colors.red,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '9999-9999'));
    },
  );

  final botaoEmail = IconButton(
    color: Colors.red,
    icon: const Icon(Icons.email),
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'falaprodavi@gmail.com'));
    },
  );

  final botaoSMS = IconButton(
    color: Colors.red,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '9999-9999'));
    },
  );

  Widget build(BuildContext contexto) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto,
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              nome,
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [botaoTelefone, botaoEmail, botaoSMS],
        ),
      ],
    ));
  }
}
