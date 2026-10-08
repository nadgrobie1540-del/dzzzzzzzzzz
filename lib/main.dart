import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardScreen(),
    ),
  );
}
class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Ввод данных карты'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.cloud, color: Colors.white, size: 32),
                    ],
                  ),
                  Text(
                    '0000 0000 0000 0000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CARD HOLDER',
                              style: TextStyle(color: Colors.white70, fontSize: 10)),
                          Text('IVAN IVANOV',
                              style: TextStyle(color: Colors.white, fontSize: 14)),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('EXPIRES',
                              style: TextStyle(color: Colors.white70, fontSize: 10)),
                          Text('00/00',
                              style: TextStyle(color: Colors.white, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            TextField(
              enabled: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Номер карты',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 10),
                prefixIcon: Icon(Icons.credit_card, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              enabled: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Имя владельца',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 10),
                prefixIcon: Icon(Icons.person, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              enabled: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Срок действия',
                labelStyle: TextStyle(color: Colors.white70, fontSize: 10),
                prefixIcon: Icon(Icons.calendar_today, color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}