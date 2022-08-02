import 'package:flutter/material.dart';
import 'package:seven_days_flutter/widgets/theme.dart';

class FirstRating extends StatelessWidget {
  const FirstRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/rating_dark.png',
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pizza Balado',
              style: ratingDarkHeadingText,
            ),
            SizedBox(height: 4),
            Text(
              '\$90,00',
              style: ratingDarkPriceText,
            ),
            SizedBox(height: 124),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Was it delicious?',
                    style: ratingDarkChoiceText,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff37394D),
                          shape: CircleBorder(),
                          minimumSize: Size(60, 60),
                        ),
                        onPressed: () => {},
                        child: Text(
                          '😡',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff37394D),
                          shape: CircleBorder(),
                          minimumSize: Size(60, 60),
                        ),
                        onPressed: () => {},
                        child: Text(
                          '😔',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff37394D),
                          shape: CircleBorder(),
                          minimumSize: Size(60, 60),
                        ),
                        onPressed: () => {},
                        child: Text(
                          '😁',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff37394D),
                          shape: CircleBorder(),
                          minimumSize: Size(60, 60),
                        ),
                        onPressed: () => {},
                        child: Text(
                          '😍',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 90),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff34D186),
                        minimumSize: Size(210, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      child: Text('Rate Now'),
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
