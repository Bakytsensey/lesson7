import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lesson7(),
    );
  }
}

class Lesson7 extends StatelessWidget {
  const Lesson7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Column(
            children: [
              Text(
                'Избранное',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff131921),
                ),
              ),
              Text(
                '20',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff7B7E82),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/search.png',
            width: 18,
            height: 16,
          ),
          SizedBox(width: 19),
          Image.asset(
            'assets/images/action2.png',
            width: 20,
            height: 16,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 14,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CommonContainerWidget(
                  title: 'Все',
                  color: Color(0xffF6F6FB),
                  width: 50,
                  textStyle: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 12),
                CommonContainerWidget(
                    title: 'КВЕСТЫ',
                    color: Color(0xff64BDFF),
                    width: 78,
                    textStyle: TextStyle(color: Colors.white)),
                SizedBox(width: 12),
                CommonContainerWidget(
                    title: 'ЗДАНИЯ',
                    color: Color(0xffFF7C74),
                    width: 79,
                    textStyle: TextStyle(color: Colors.white)),
                SizedBox(width: 12),
                CommonContainerWidget(
                    title: 'ПАМЯТНИКИ',
                    color: Color(0xff55E3DB),
                    width: 104,
                    textStyle: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 20),
            MainComtanerWidjet(
              imageURL: 'assets/images/con1.png',
              title: 'Бирюлевский \n дедропарк',
              imageSubTitle: 'assets/images/actions1.png',
              subTitle: ' 24 км от вас ',
              imageRight1: 'assets/images/house.png',
              imageRight2: 'assets/images/love.png',
            ),
            SizedBox(height: 12),
            MainComtanerWidjet(
              imageURL: 'assets/images/moscow.png',
              title: 'Прогулка по Москве\n невыходя из дома',
              imageSubTitle: 'assets/images/actions1.png',
              subTitle: ' 24 км от вас ',
              imageRight1: 'assets/images/Group 1021.png',
              imageRight2: 'assets/images/love.png',
            ),
            SizedBox(height: 12),
            MainComtanerWidjet(
              imageURL: 'assets/images/moscow.png',
              title: 'Прогулка по Москве\n невыходя из дома',
              imageSubTitle: 'assets/images/actions1.png',
              subTitle: ' 24 км от вас ',
              imageRight1: 'assets/images/Group 1021.png',
              imageRight2: 'assets/images/love.png',
            ),
          ],
        ),
      ),
    );
  }
}

class MainComtanerWidjet extends StatelessWidget {
  final String imageURL;
  final String subTitle;
  final String imageSubTitle;
  final String imageRight1;
  final String imageRight2;
  final String title;
  const MainComtanerWidjet({
    super.key,
    required this.imageURL,
    required this.subTitle,
    required this.imageSubTitle,
    required this.imageRight1,
    required this.imageRight2,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 101,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 101,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              image: DecorationImage(
                image: AssetImage(imageURL),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Image.asset(
                    imageSubTitle,
                    height: 9.43,
                    width: 11,
                  ),
                  Text(subTitle),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(17),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(
                      imageRight1,
                    ),
                  ),
                ),
              ),
              Image.asset(
                imageRight2,
                width: 15.27,
                height: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CommonContainerWidget extends StatelessWidget {
  final String title;
  final Color color;
  final double width;
  final TextStyle textStyle;
  const CommonContainerWidget({
    super.key,
    required this.title,
    required this.color,
    required this.width,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 32,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
