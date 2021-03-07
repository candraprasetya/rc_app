import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(height: 20),
            Text(
              'AMIKOM RESOURCE CENTER',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            Text(
              'UNIVERSITAS AMIKOM YOGYAKARTA',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.purple[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
