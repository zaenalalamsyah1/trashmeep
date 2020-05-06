import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TransaksiKategori extends StatefulWidget {

  
  TransaksiKategori({Key key}) : super(key: key);

  @override
  _TransaksiKategoriState createState() => _TransaksiKategoriState();
}

class _TransaksiKategoriState extends State<TransaksiKategori> {
  TextEditingController controllerNamaKategori = new TextEditingController();
  TextEditingController controllerJumlah = new TextEditingController();
  TextEditingController controllerKirimPoin = new TextEditingController();
  TextEditingController controllerKodeUser = new TextEditingController();

  void TransaksiKategori(){
    var url ="http://192.168.1.6/trashmee/transaksi/transaksisampah.php";
    http.post(url, body:{

      "nama_kategori": controllerNamaKategori.text, 
      "jumlah" : controllerJumlah.text,
      "kirim_poin" : controllerKirimPoin.text,
      "kode_user" : controllerKodeUser.text,

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("KIRIM POIN"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              new TextField(
                controller: controllerNamaKategori,
                decoration: new InputDecoration(
                  hintText: "Nama Kategori",
                  labelText: "Nama Kategori",
                ),
              ),
              new TextField(
                controller: controllerJumlah,
                decoration: new InputDecoration(
                  hintText: "Jumlah penukaran",
                  labelText: "Jumlah Penukaran (kg)",
                ),
              ),
              new TextField(
                controller: controllerKirimPoin,
                decoration: new InputDecoration(
                  hintText: "Masukan Poin",
                  labelText: "Masukan Poin",
                ),
              ),
                            new TextField(
                controller: controllerKodeUser,
                decoration: new InputDecoration(
                  hintText: "Masukan username penerima",
                  labelText: "Kode User",
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new RaisedButton(
                child: new Text("KIRIM"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  TransaksiKategori();
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
