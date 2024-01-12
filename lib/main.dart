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
            Stack(
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
                  Container(
                    width: width,
                    margin: EdgeInsets.fromLTRB(0, 140, 0, 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 64,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade500,
                          foregroundImage: const AssetImage('images/girl.jpg'),
                          radius: 60,
                        )
                      ],
                    ),
                  ),
                ])
              ],
            ),
            const Text(
              'Jeanna Doe',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
                width: width / 1.15,
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 20.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )),
            SizedBox(
              width: width / 1.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Text(
                          'Modifier le profil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 7),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Text(
                        '+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
