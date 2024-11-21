import 'package:flutter/material.dart';
import 'package:tes/models/novel_models.dart';
import 'package:url_launcher/url_launcher.dart';

class TampilanDetail extends StatefulWidget {
  final Novel novel;
  const TampilanDetail({super.key, required this.novel});

  @override
  State<TampilanDetail> createState() => _TampilanDetailState();
}

class _TampilanDetailState extends State<TampilanDetail> {

  @override
  Widget build(BuildContext context) {
    final novel = widget.novel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Detail", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(novel.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    novel.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Tambahkan logika untuk ikon favorit di sini
                        },
                        icon: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 32, color: Colors.grey),
              ListTile(
                title: Text("DiTulis Oleh"),
                subtitle: Text(novel.author),
              ),
              ListTile(
                title: Text("Tahun Terbit"),
                subtitle: Text(novel.tahun_terbit),
              ),
              ListTile(
                title: Text("Penerbit"),
                subtitle: Text(novel.penerbit),
              ),
              Divider(height: 32, color: Colors.grey),
              Text(
                "Sinopsis Buku",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                novel.synopsis,
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32, color: Colors.grey),
              Text(
                "Ulasan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                novel.review,
              ),
              SizedBox(height: 8),
              Divider(height: 32, color: Colors.grey),
              Text(
                'Link Novel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () async {
                  final url = novel.linkNovel;
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Tidak dapat membuka tautan: $url';
                  }
                },
                child: Text(
                  novel.linkNovel,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
