import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Login(),
      backgroundColor: Colors.white30,
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[

          Align(
            alignment: Alignment.center,
            child: const Text("Bienvenue!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.center,
            child : const Text("Veuillez vous connecter ou \n créer un nouveau compte \n pour utiliser l'application. " ,
              textAlign: TextAlign.center,
              style : TextStyle(
                color: Colors.white,
                fontSize:18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          const TextField(
            textAlign: TextAlign.center,

            decoration: InputDecoration(
                hintText: "Mot de passe"
            ),
          ),

          const SizedBox(
            height: 88.0,
          ),
          Container(
            width: double.infinity,
            child:RawMaterialButton(
              fillColor: Color(0xFF0069FE),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () {},
              child: Text("Se connecter",
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 18.0)
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: double.infinity,
            height: 55,
            child:OutlinedButton(
              onPressed: () {},
              child: Text("Créer un nouveau compte",
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 18.0)
              ),
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Align(
            alignment: Alignment.center,
            child: const Text("Mot de passe oublié", textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}




