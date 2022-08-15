import 'package:flutter/material.dart';
import '../data/receita_data.dart';
import '../components/metodo_item.dart';
import '../data/metodo_data.dart';
import '../models/metodo.dart';
import '../models/receita.dart';

class MetodoOverviewPage extends StatelessWidget {
  final List<Metodo> loadedMetodos = dummyMetodos;
  final List<Receita> loadedReceitas = dummyReceita;
  MetodoOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count1 = 0,
        count2 = 0,
        count3 = 0,
        count4 = 0,
        count5 = 0,
        count6 = 0,
        count7 = 0,
        count8 = 0;
    for (int i = 0; i < loadedMetodos.length; i++) {
      if (loadedMetodos[i].id.substring(0, 1) == '1') {
        count1++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '2') {
        count2++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '3') {
        count3++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '4') {
        count4++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '5') {
        count5++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '6') {
        count6++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '7') {
        count7++;
      } else if (loadedMetodos[i].id.substring(0, 1) == '8') {
        count8++;
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('MÉTODOS FASE 1')),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CabecalhoProdutos(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count1,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i], receita: loadedReceitas[i]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count2,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i + count1],
                          receita: loadedReceitas[i + count1]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count3,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i + count1 + count2],
                          receita: loadedReceitas[i + count1 + count2]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count4,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i + count1 + count2 + count3],
                          receita:
                              loadedReceitas[i + count1 + count2 + count3]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count5,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[
                              i + count1 + count2 + count3 + count4],
                          receita: loadedReceitas[
                              i + count1 + count2 + count3 + count4]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count6,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[
                              i + count1 + count2 + count3 + count4 + count5],
                          receita: loadedReceitas[
                              i + count1 + count2 + count3 + count4 + count5]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count7,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i +
                              count1 +
                              count2 +
                              count3 +
                              count4 +
                              count5 +
                              count6],
                          receita: loadedReceitas[i +
                              count1 +
                              count2 +
                              count3 +
                              count4 +
                              count5 +
                              count6]),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8106,
                    child: ListView.builder(
                      itemCount: count8,
                      itemBuilder: (ctx, i) => MetodoItem(
                          metodo: loadedMetodos[i +
                              count1 +
                              count2 +
                              count3 +
                              count4 +
                              count5 +
                              count6 +
                              count7],
                          receita: loadedReceitas[i +
                              count1 +
                              count2 +
                              count3 +
                              count4 +
                              count5 +
                              count6 +
                              count7]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CabecalhoProdutos extends StatelessWidget {
  const CabecalhoProdutos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(children: [const Divider(height: 50)]),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 168, 141, 20),
            child: Text("ALIMENTOS INCOMPATÍVEIS",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Colors.blueGrey,
            child: Text("METAIS",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 248, 186, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CHÁS\n", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 59, 138, 23),
            child: Column(
              children: [
                Text("TINTURAS\n", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 168, 195, 16),
            child: Column(
              children: [
                Text("AROMATERAPIA\n", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Colors.blue,
            child: Column(
              children: [
                Text("MANIPULADOS\n", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("DESTOXIFICAÇÃO E NEUTRALIZAÇÃO",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 81, 14, 140),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ÓRGÃOS\n",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
