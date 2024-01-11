import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyFirstUI(),
    );
  }
}

class MyFirstUI extends StatelessWidget {
  const MyFirstUI({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    double appBarHeight = AppBar().preferredSize.height;
    double height = MediaQuery.of(context).size.height - appBarHeight;

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          elevation: 2,
          shadowColor: Colors.blueGrey[300],
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Column(
          children: [
            Row(children: [
              SizedBox(
                width: width,
                height: height / 4,
                child: Image.asset(
                  'images/mountains.png',
                  fit: BoxFit.cover,
                ),
              ),
            ]),
            Row(children: [
              CircleAvatar(
                backgroundColor: Colors.brown.shade500,
                backgroundImage: const AssetImage('images/girl.jpg'),
              )
            ],)
          ],
        ));
  }
}
