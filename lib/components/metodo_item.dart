import 'package:flutter/material.dart';
import '../models/metodo.dart';
import '../models/receita.dart';

class MetodoItem extends StatefulWidget {
  final Metodo metodo;
  final Receita receita;
  const MetodoItem({Key? key, required this.metodo, required this.receita})
      : super(key: key);

  @override
  State<MetodoItem> createState() => _MetodoItemState();
}

class _MetodoItemState extends State<MetodoItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: ElevatedButton(
          onPressed: () {
            print(widget.metodo.id);
            print(
                (widget.metodo.itemSelected == 1) ? widget.receita.title : "");
            setState(() {});
            widget.metodo.toggleSelected();
          },
          style: ButtonStyle(
            backgroundColor: (widget.metodo.itemSelected == 0)
                ? MaterialStateProperty.all(Colors.teal[400])
                : (widget.metodo.itemSelected == 1)
                    ? MaterialStateProperty.all(Color.fromARGB(255, 28, 9, 203))
                    : (widget.metodo.itemSelected == 2)
                        ? MaterialStateProperty.all(Colors.redAccent[700])
                        : MaterialStateProperty.all(Colors.black),
          ),

          // backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
          // backgroundColor: (widget.product.id.substring(0, 1) == '1')
          //     ? MaterialStateProperty.all(Color.fromARGB(255, 168, 141, 20))
          //     : (widget.product.id.substring(0, 1) == '2')
          //         ? MaterialStateProperty.all(
          //             Color.fromARGB(255, 139, 138, 138))
          //         : (widget.product.id.substring(0, 1) == '3')
          //             ? MaterialStateProperty.all(
          //                 Color.fromARGB(255, 248, 186, 0))
          //             : (widget.product.id.substring(0, 1) == '4')
          //                 ? MaterialStateProperty.all(
          //                     Color.fromARGB(255, 59, 138, 23))
          //                 : (widget.product.id.substring(0, 1) == '5')
          //                     ? MaterialStateProperty.all(
          //                         Color.fromARGB(255, 190, 219, 27))
          //                     : (widget.product.id.substring(0, 1) == '6')
          //                         ? MaterialStateProperty.all(Colors.blue)
          //                         : (widget.product.id.substring(0, 1) ==
          //                                 '7')
          //                             ? MaterialStateProperty.all(
          //                                 Colors.green)
          //                             : (widget.product.id
          //                                         .substring(0, 1) ==
          //                                     '8')
          //                                 ? MaterialStateProperty.all(
          //                                     Color.fromARGB(
          //                                         255, 39, 6, 67))
          //                                 : MaterialStateProperty.all(
          //                                     Colors.black)),
          child: Text(
            widget.metodo.title,
            // '   ' +
            // (widget.metodo.itemSelected == 0
            //     ? 'SIM'
            //     : widget.metodo.itemSelected == 1
            //         ? 'NTR'
            //         : 'NÃO'),
            style: TextStyle(
                fontSize: 11,
                color: widget.metodo.itemSelected == 0
                    ? Colors.white
                    : widget.metodo.itemSelected == 1
                        ? Colors.white
                        : Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
