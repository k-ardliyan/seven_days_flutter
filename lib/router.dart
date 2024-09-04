import 'package:go_router/go_router.dart';
import 'pages/first_empty.dart';
import 'pages/first_pricing.dart';
import 'pages/first_random.dart';
import 'pages/first_rating.dart';
import 'pages/first_signin.dart';
import 'pages/first_splash.dart';
import 'pages/first_started.dart';
import 'pages/second_empty.dart';
import 'pages/second_pricing.dart';
import 'pages/second_random.dart';
import 'pages/second_rating.dart';
import 'pages/second_signin.dart';
import 'pages/second_splash.dart';
import 'pages/second_started.dart';
import 'pages/home_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
        path: '/first_empty', builder: (context, state) => const FirstEmpty()),
    GoRoute(
        path: '/first_pricing',
        builder: (context, state) => const FirstPricing()),
    GoRoute(
        path: '/first_random',
        builder: (context, state) => const FirstRandom()),
    GoRoute(
        path: '/first_rating',
        builder: (context, state) => const FirstRating()),
    GoRoute(
        path: '/first_signin',
        builder: (context, state) => const FirstSignIn()),
    GoRoute(
        path: '/first_splash',
        builder: (context, state) => const FirstSplash()),
    GoRoute(
        path: '/first_started',
        builder: (context, state) => const FirstStarted()),
    GoRoute(
        path: '/second_empty',
        builder: (context, state) => const SecondEmpty()),
    GoRoute(
        path: '/second_pricing',
        builder: (context, state) => const SecondPricing()),
    GoRoute(
        path: '/second_random',
        builder: (context, state) => const SecondRandom()),
    GoRoute(
        path: '/second_rating',
        builder: (context, state) => const SecondRating()),
    GoRoute(
        path: '/second_signin',
        builder: (context, state) => const SecondSignIn()),
    GoRoute(
        path: '/second_splash',
        builder: (context, state) => const SecondSplash()),
    GoRoute(
        path: '/second_started',
        builder: (context, state) => const SecondStarted()),
  ],
);
