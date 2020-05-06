import 'package:flutter/material.dart';
import 'package:trashmeep/views/beranda.dart';
import 'package:trashmeep/views/kategori.dart';
import 'package:trashmeep/views/profile.dart';
import 'package:trashmeep/views/riwayat.dart';


class Pengepul extends StatefulWidget {
// membuat logout
  final VoidCallback logOut;
  Pengepul(this.logOut);

//end

  @override
  _PengepulState createState() => _PengepulState();
}

class _PengepulState extends State<Pengepul> {
  logOut() {
    setState(() {
      widget.logOut();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        appBar: AppBar(
          title: Text("Pengepul"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                logOut();
              },
              icon: Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Beranda(),
            Category(),
            Riwayat(),
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: "Beranda"
            ),
            Tab(
              icon: Icon(Icons.apps),
              text: "Kategori"
            ),
            Tab(
              icon: Icon(Icons.history),
              text: "Riwayat"
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Profil"
            ),
          ],
        ),
      ),
    );
  }
}
