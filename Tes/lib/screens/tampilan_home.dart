import 'package:flutter/material.dart';
import 'package:tes/data_list_novel/data_novel.dart';
import 'package:tes/screens/tampilan_detail.dart';
import 'package:tes/models/novel_models.dart';
import 'package:tes/widget/itemcard.dart';

class TampilanHome extends StatefulWidget {
  const TampilanHome({super.key});

  @override
  State<TampilanHome> createState() => _TampilanHomeState();
}

class _TampilanHomeState extends State<TampilanHome> {
  String selectedCategory = 'Semua';
  List<Novel> get filteredNovels {
    if (selectedCategory == 'Semua') {
      return novels;
    } else {
      return novels.where((novel) => novel.kategori == selectedCategory).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Telusuri',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          // Image Carousel
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
          // ePustaka Collection
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi Novel',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ListView(
                            children: Kategori.map((kategori) {
                              return ListTile(
                                title: Text(kategori),
                                onTap: () {
                                  setState(() {
                                    selectedCategory = kategori;
                                  });
                                  Navigator.pop(context);
                                },
                              );
                            }).toList(),
                          );
                        },
                      );
                    },
                  )
                ]
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.60

              ),
              itemCount: filteredNovels.length,
              itemBuilder: (context, index) {
                final novel = filteredNovels[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TampilanDetail(novel: novels[index]),
                      ),
                    );
                  },
                  child: Itemcard(novel: novel),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}