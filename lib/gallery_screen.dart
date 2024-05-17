import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 3 Cuba'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          _buildImageCard('assets/images/catito.jpeg', 'catito.jpeg', GoogleFonts.merriweather(fontSize: 18)),
          _buildImageCard('assets/images/catito.jpeg', 'catito.png', GoogleFonts.lato(fontSize: 18)),
          _buildImageCard('assets/images/amigo.svg', 'Devops (imagen svg)', GoogleFonts.roboto(fontSize: 18)),
        ],
      ),
    );
  }

  Widget _buildImageCard(String imagePath, String imageName, TextStyle textStyle) {
    Widget imageWidget;

    if (imagePath.endsWith('.svg')) {
      imageWidget = SvgPicture.asset(imagePath, width: 200, height: 200);
    } else {
      imageWidget = Image.asset(imagePath, width: 200, height: 200);
    }

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageWidget,
            SizedBox(height: 8),
            Text(imageName, style: textStyle),
          ],
        ),
      ),
    );
  }
}
