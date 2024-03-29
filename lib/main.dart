import 'package:flutter/material.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // Title
      title: "Usando Tabs",
      // Home
      home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
} //fin clase mi casa

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: Text("Bottom Navigation Bar Por Picasso"),
        backgroundColor: Colors.green[300],
      ), //finappbar
      body: TabBarView(
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.green[300],
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.audiotrack),
            ),
            Tab(
              icon: Icon(Icons.backup_sharp),
            ),
            Tab(
              icon: Icon(Icons.emoji_emotions_rounded),
            ),
          ],
          controller: controller,
        ), //fin chiltabar
      ), //fin de bottom navigator
    ); //fin de scaffold
  } //fin widget
} //fin micasastate