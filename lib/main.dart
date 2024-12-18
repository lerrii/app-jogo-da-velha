import 'package:flutter/material.dart';
import 'componentes/jogo_da_velha.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(titulo: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.titulo});

  final String titulo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        //color: const Color.fromARGB(255, 255, 255, 255),
                        //child: const Text('Primeira Coluna'),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 242, 232, 232),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color.fromARGB(212, 0, 0, 0),
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(187, 0, 0, 0),
                              blurRadius: 10,
                              offset: Offset(10, 10),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                        child: JogoDaVelha(),
                      )),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        //color: const Color.fromARGB(255, 255, 255, 255),
                        //child: const Text('Terceira Coluna'),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                //alignment: Alignment.center,
                //color: const Color.fromARGB(255, 255, 255, 255),
                //child: const Text('Layout Inferior'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
