import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Componentes Temp',
        ),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      // add normal
      //lista.add(tempWidget);
      //lista.add(Divider());
      // add corto
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((e) => Column(
              children: [
                ListTile(
                  title: Text(e + '!'),
                  subtitle: Text('Cualquier Cosa'),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
