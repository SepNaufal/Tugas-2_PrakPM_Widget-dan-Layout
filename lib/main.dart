import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 24, 200, 253),
          leading: Icon(Icons.home),
          title: Text('Aplikasi Burung'),
        ),

        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(children: [Icon(Icons.archive), Text("Artikel baru")]),
              Card(
                child: Column(
                  children: [
                    Image.network(
                      'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
                    ),
                    Text(
                      "Sosok Burung puyuh Biru langka yang unik dan menarik",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Komentar',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sep Naufal_2306078'),
                          Text(
                            'Senang sekali bisa melihat burung puyuh biru yang unik ini!',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
