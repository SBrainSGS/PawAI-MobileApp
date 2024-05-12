import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: screenHeight * 0.4,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/pic/dogCard.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'ДАЛМАТИН',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontFamily: 'Involve',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/pic/paw.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Текстлвдпваьдвпдвьпдвпвпвлтвлоитвловтловтпловтплвтловтловтиловтиловтивлотивлотвлотвлтвлпв',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: 'Involve',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Добавьте дополнительные виджеты, если необходимо
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: SvgPicture.asset('assets/pic/arrow.svg'),
              iconSize: 80,
              onPressed: () {
                Navigator.pushNamed(context, '/libraryPage');
              },
            ),
          ),
        ],
      )
    );
  }
}

//     return Scaffold(
//       //backgroundColor: Color(0xFFFFFFFF),
//       body: Stack(
//         children: [
//
//           Container(
//             height: screenHeight * 0.4,
//             alignment: Alignment.topCenter,
//             decoration: BoxDecoration(
//               color: Colors.transparent,
//               borderRadius: BorderRadius.circular(20),
//               image: DecorationImage(
//                 image: AssetImage('assets/pic/dogCard.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Text(
//               'Заголовок',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 8),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Row(
//               children: [
//                 Image.asset(
//                   'assets/pic/smallImage.png',
//                   width: 24,
//                   height: 24,
//                 ),
//                 SizedBox(width: 8),
//                 Expanded(
//                   child: Text(
//                     'Текст',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }