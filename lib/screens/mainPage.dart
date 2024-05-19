import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                color: Color(0xFFBF66FF), // Фоновый цвет
              ),
              child: SvgPicture.asset(
                'assets/pic/backSpots.svg',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: SvgPicture.asset('assets/pic/camera.svg'),
                iconSize: 250,
                onPressed: () {
                  // Кнопка камеры
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 75),
                      backgroundColor: Color(0xFFABF62D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'ЗАГРУЗИТЬ ФОТО',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Involve',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      // Действия при нажатии на кнопку загрузки фото
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: SvgPicture.asset('assets/pic/library.svg'),
                iconSize: 80,
                onPressed: () {
                  Navigator.pushNamed(context, '/libraryPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}