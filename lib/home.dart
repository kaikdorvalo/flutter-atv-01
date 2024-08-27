import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(0, 204, 115, 1)),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Aplicação bancária',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 0, 204, 116),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Text("Transações"),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    children: <Widget>[
                      Container(
                        height: 50,
                        margin: const EdgeInsets.all(2.0),
                        color: const Color.fromARGB(255, 255, 179, 179),
                        child: const Center(
                          child: Text("Compra Kabum: R\$ 57,00"),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.all(2.0),
                        color: const Color.fromARGB(255, 255, 179, 179),
                        child: const Center(
                          child: Text(
                              'Pagamento realizado à Alesandro: R\$ 130,00'),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.all(2.0),
                        color: const Color.fromARGB(255, 211, 255, 189),
                        child: const Center(
                          child: Text('Pagamento recebido: R\$ 1.500,00'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
