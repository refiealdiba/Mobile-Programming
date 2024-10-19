import 'package:flutter/material.dart';
import 'package:list_kuliner/detail_page.dart';
import 'makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;
  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 178, 178, 178),
              offset: Offset(1.0, 2.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        height: 100,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                makanan.gambar,
                width: 85,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  makanan.nama,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  makanan.deskripsi,
                  style: TextStyle(
                    color: Color.fromARGB(255, 156, 156, 156),
                  ),
                ),
                Text(
                  makanan.harga,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F6F6F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
