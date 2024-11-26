import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          // DETAIL HEADER
          // image utama
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Tombol Back Custom
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: (){}, icon: const Icon(Icons.arrow_back)),
                ),
              ),
            ],
          ),
          // DETAIL INFO
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // Info Atas (nama candi dan tombol favorit)
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(candi.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border))
                  ],
                ),
                // Info Tengah (lokasi, dibangun, tipe)
                const SizedBox(
                  height: 16,
                ),
                Row(children: [
                  Icon(Icons.place, color: Colors.red,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                    child: Text('Lokasi', style: TextStyle(
                      fontWeight: FontWeight.bold ),),
                  ),
                  Text(': ${candi.location}',),
                ],),
                Row(children: [
                  Icon(Icons.calendar_month, color: Colors.blue,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                    child: Text('Dibangun', style: TextStyle(
                      fontWeight: FontWeight.bold ),),
                  ),
                  Text(': ${candi.built}',),
                ],),
                Row(children: [
                  Icon(Icons.house, color: Colors.green,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                    child: Text('Tipe', style: TextStyle(
                      fontWeight: FontWeight.bold ),),
                  ),
                  Text(': ${candi.type}',),
                ],),
                // Pemisah
                const SizedBox(
                  height: 16,
                ),
                Divider(color: Colors.deepPurple.shade100,),
                const SizedBox(
                  height: 16,
                )
                // Info Bawah (deskripsi)
              ],
            ),
          )
        ],
      ),
    );
  }

}
