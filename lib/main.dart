import 'package:flutter/material.dart';
import 'package:new_test_project/widgets/post_section_widget.dart';
import 'widgets/friend_card_widget.dart';

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
    double containerWidth = width / 1.1;
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
        body: SingleChildScrollView(
          child: Column(
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
                      margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 54,
                          ),
                          CircleAvatar(
                              backgroundColor: Colors.brown.shade500,
                              foregroundImage:
                                  const AssetImage('images/girl.jpg'),
                              radius: 50)
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
                  width: containerWidth,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 20.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic),
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
                        borderRadius: BorderRadius.circular(10.0),
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
                      borderRadius: BorderRadius.circular(10.0),
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
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  height: 1,
                ),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Text(
                    'À propos de moi...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Icon(
                    Icons.home,
                    color: Colors.black87,
                    size: 22,
                    semanticLabel: 'Text to announce in accessibility modes'
                  ),
                  Text(
                    '  Annecy-le-Vieux, France',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ]),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Icon(
                      Icons.work,
                      color: Colors.black87,
                      size: 22,
                      semanticLabel: 'Text to announce in accessibility modes'
                  ),
                  Text(
                    '  Développeur Polyvalent, Formateur',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ]),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Icon(
                      Icons.favorite,
                      color: Colors.black87,
                      size: 22,
                      semanticLabel: 'Text to announce in accessibility modes'
                  ),
                  Text(
                    '  En couple',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  height: 1,
                ),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Text(
                    'Amis',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FriendCardWidget(
                        imagePath: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        name: "Alex"
                    ),
                    FriendCardWidget(
                        imagePath: "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        name: "Loki"
                    ),
                    FriendCardWidget(
                        imagePath: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        name: "Matt"
                    ),
                    FriendCardWidget(
                        imagePath: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        name: "Alexandre"
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Divider(
                  color: Colors.grey[300],
                  thickness: 1,
                  height: 1,
                ),
              ),
              SizedBox(
                width: containerWidth,
                child: const Row(children: [
                  Text(
                    'Feed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]),
              ),
              PostSectionWidget(size: size)
            ],
          ),

        ));
  }
}
