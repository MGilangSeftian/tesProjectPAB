import 'package:flutter/material.dart';

import 'package:tes/models/novel_models.dart';

class Itemcard extends StatefulWidget {
  final Novel novel;
  const Itemcard({super.key,required this.novel});

  @override
  State<Itemcard> createState() => _ItemcardState();
}

class _ItemcardState extends State<Itemcard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      //   Todo 2 terapkan parameter shape, margin, dan elevated dari cari
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //   Todo3 buat image sebagai anak dari column
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(widget.novel.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //   todo4 buat text sebagai anak dari column
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(widget.novel.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          //   todo5 buat text sebagai anak dari column
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              widget.novel.author,
              style: TextStyle(fontSize: 12),),
          )
        ],
      ),
    );
  }
}


