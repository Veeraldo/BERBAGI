import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1 Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      //TODO: 2 Tetapkan parameter shape, margin, dan elevation dari Cari
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              //TODO: 3 Buat Image sebagai anak dari column
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //TODO: 4 Buat text sebagai anak dari column
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(candi.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          //TODO: 5 buat text sebagai anak dari column
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(candi.type,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
