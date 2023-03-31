import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Group Member'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  context: context,
                  color: Color.fromARGB(255, 0, 255, 204),
                  name: "นายยงยุทธ ทิพวรรณ์",
                  blocktext: "Student-ID 633410084-3",
                  image: "images/me.jpg"),
              Card(
                  context: context,
                  color: Color.fromARGB(255, 255, 146, 138),
                  name: "นายจิรภัทร ภูหลักถิน",
                  blocktext: "Student-ID 633410008-9",
                  image: "images/mhan.jpg"),
              Card(
                  context: context,
                  color: Color.fromARGB(255, 173, 255, 175),
                  name: "นายนพรัตน์ ตั้งหมู่",
                  blocktext: "Student-ID 633410081-9",
                  image: "images/ven.jpg"),
              Card(
                  context: context,
                  color: Color.fromARGB(255, 194, 141, 255),
                  name: "นายวิชรัตน์ เพิ่มชีลอง",
                  blocktext: "Student-ID 633410085-1",
                  image: "images/sia.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String name,
      required String blocktext,
      required String image}) {
    return Container(
      width: 400,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: name,
                        blocktext: blocktext,
                        image: image,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              image,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(name))),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name, required this.blocktext, required this.image});
  String name;
  String blocktext;
  String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Group Member"),
      ),
      body: Column(children: [Text(name), Text(blocktext)]),
    );
  }
}
