import 'package:flutter/material.dart';
import 'package:seven_days_flutter/pages/first_empty.dart';
import 'package:seven_days_flutter/pages/first_pricing.dart';
import 'package:seven_days_flutter/pages/first_rating.dart';
import 'package:seven_days_flutter/pages/first_signin.dart';
import 'package:seven_days_flutter/pages/second_empty.dart';
import 'package:seven_days_flutter/pages/second_rating.dart';
import 'package:seven_days_flutter/pages/second_signin.dart';
import 'package:seven_days_flutter/pages/first_started.dart';
import 'package:seven_days_flutter/pages/second_splash.dart';
import 'package:seven_days_flutter/pages/first_splash.dart';
import 'package:seven_days_flutter/pages/second_started.dart';

void main() => runApp(const SevenDays());

class SevenDays extends StatelessWidget {
  const SevenDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPricing(),
    );
  }
}
