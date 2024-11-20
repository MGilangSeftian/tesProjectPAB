import 'package:flutter/material.dart';

class TampilanHome extends StatefulWidget {
  const TampilanHome({super.key});

  @override
  State<TampilanHome> createState() => _TampilanHomeState();
}

class _TampilanHomeState extends State<TampilanHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Home',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Telusuri',
                prefixIcon: const Icon(Icons.search),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(),
                ),
                filled:true,
                fillColor:Colors.white,
              )
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/Mobile_login.png'), // Replace with your asset image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),




        ],
      ),

    );
  }
}
