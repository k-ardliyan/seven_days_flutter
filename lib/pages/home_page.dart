import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> firstGroupPages = [
    {
      'title': 'Empty',
      'route': '/first_empty',
      'icon': Icons.remove_circle_outline
    },
    {'title': 'Pricing', 'route': '/first_pricing', 'icon': Icons.attach_money},
    {'title': 'Random', 'route': '/first_random', 'icon': Icons.shuffle},
    {'title': 'Rating', 'route': '/first_rating', 'icon': Icons.star_rate},
    {'title': 'Signin', 'route': '/first_signin', 'icon': Icons.login},
    {
      'title': 'Splash',
      'route': '/first_splash',
      'icon': Icons.water_drop_outlined
    },
    {
      'title': 'Started',
      'route': '/first_started',
      'icon': Icons.play_circle_outline
    },
  ];

  final List<Map<String, dynamic>> secondGroupPages = [
    {
      'title': 'Empty',
      'route': '/second_empty',
      'icon': Icons.remove_circle_outline
    },
    {
      'title': 'Pricing',
      'route': '/second_pricing',
      'icon': Icons.attach_money
    },
    {'title': 'Random', 'route': '/second_random', 'icon': Icons.shuffle},
    {'title': 'Rating', 'route': '/second_rating', 'icon': Icons.star_rate},
    {'title': 'Signin', 'route': '/second_signin', 'icon': Icons.login},
    {
      'title': 'Splash',
      'route': '/second_splash',
      'icon': Icons.water_drop_outlined
    },
    {
      'title': 'Started',
      'route': '/second_started',
      'icon': Icons.play_circle_outline
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isSmallScreen = screenWidth < 375;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seven Days App',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'First',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                key: const PageStorageKey<String>('first_group_grid'),
                itemCount: firstGroupPages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.go(firstGroupPages[index]['route']!);
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            firstGroupPages[index]['icon'] as IconData,
                            size: 32,
                            color: Theme.of(context).primaryColor,
                          ),
                          if (!isSmallScreen) ...[
                            const SizedBox(height: 8),
                            Text(
                              firstGroupPages[index]['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'Second',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                key: const PageStorageKey<String>('second_group_grid'),
                itemCount: secondGroupPages.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.go(secondGroupPages[index]['route']!);
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            secondGroupPages[index]['icon'] as IconData,
                            size: 32,
                            color: Theme.of(context).primaryColor,
                          ),
                          if (!isSmallScreen) ...[
                            const SizedBox(height: 8),
                            Text(
                              secondGroupPages[index]['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
