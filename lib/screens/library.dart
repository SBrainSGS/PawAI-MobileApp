import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: SvgPicture.asset('assets/pic/arrow.svg'),
                iconSize: 80,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'БИБЛИОТЕКА',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Involve',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/cardPage');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/pic/backCard.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                height: 145,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('assets/pic/dog.png'), // Путь к вашей картинке
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Далматин',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Описание',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}