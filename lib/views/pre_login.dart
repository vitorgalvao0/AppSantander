import 'package:app_santander/components/botao_pre_login.dart';
import 'package:flutter/material.dart';

class PreLogin extends StatefulWidget {
  const PreLogin({super.key});

  @override
  State<PreLogin> createState() => _PreLoginState();
}

class _PreLoginState extends State<PreLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 249, 252),
      appBar: AppBar(
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
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("pessoa_login.jpeg",),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BotaoPreLogin(icon: Icons.message, text: "Ajuda"),
                      BotaoPreLogin(icon: Icons.lock_open, text: "ID Santander"),
                      BotaoPreLogin(icon: Icons.logout, text: "Acessar sua\nconta")
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
              ),
              color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.swipe_up_outlined,
                  size: 35,
                  color: Color.fromARGB(255,236,9,0),
                ),
                SizedBox(width: 15,),
                Text("Pagar ou Cobrar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255,236,9,0)
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}