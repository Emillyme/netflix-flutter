import 'package:flutter/material.dart';
import 'package:netflix/list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  String registedUser = "emi";
  String registedPassword = "1234";
  String verificated = '';

  bool logar() {
    if (_user.text.trim() == registedUser && _pass.text.trim() == registedPassword) {
      return true;
    } else {
      setState(() {
        verificated = 'Incorrect credentials.';
      });
      return false;
    }
  }

  @override
  void dispose() {
    _user.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/1/10/Meta-image-netflix-symbol-black.png',
          height: 100,
        ),
        toolbarHeight: 200,
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      backgroundColor: Colors.black26,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: _user,
              style: const TextStyle(color: Colors.white60),
              decoration: InputDecoration(
                hintText: 'Nome de usuário',
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _pass,
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Insira sua senha',
                hintStyle: const TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                if (logar()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // deixa o tamanho do botão ajustado ao conteúdo
                  children: const [
                    Icon(Icons.login, color: Colors.white),
                    SizedBox(width: 10), // da espaço entre ícone e texto
                    Text("Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
            ),
            if (verificated.isNotEmpty) // Exibe mensagem de erro se houver erro
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  verificated,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
