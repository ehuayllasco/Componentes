import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dam.smashmexico.com.mx/wp-content/uploads/2020/06/Daredevil-Marvel-recuperara-los-derechos-de-la-serie-en-seis-meses-cover.jpg'),
              radius: 21.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.cyan,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Gen_Con_Indy_2008_-_costumes_172.JPG/800px-Gen_Con_Indy_2008_-_costumes_172.JPG'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 2000),
        ),
      ),
    );
  }
}
