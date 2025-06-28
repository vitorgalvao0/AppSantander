import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios,)),
        backgroundColor: Color.fromARGB(255,236,9,0),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Image.asset("santander_nome_login2.png", height: 60,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.place_outlined),
          )
        ],
      )
    );
  }
}