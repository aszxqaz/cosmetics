// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cosmetics/fixtures/fixtures.dart';
import 'package:cosmetics/widgets/carousel/carousel.dart';
import 'package:cosmetics/widgets/product-card/product_card.dart';
import 'package:cosmetics/widgets/typography/typography.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth,
                    child: Stack(
                      children: [
                        MainHeaderPageView(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Stack(
                            children: [
                              IgnorePointer(
                                child: Container(
                                  height: 166,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromRGBO(44, 44, 44, 0),
                                        const Color.fromRGBO(44, 44, 44, 1),
                                      ],
                                      begin: const FractionalOffset(0.0, 0.0),
                                      end: const FractionalOffset(0.0, 1.0),
                                      tileMode: TileMode.clamp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 28,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeaderTitle('Скидка -15%'),
                                const SizedBox(height: 8),
                                HeaderSubtitle('Сыворотка'),
                                const SizedBox(height: 3),
                                HeaderSubtitle('HA EYE & NECK SERUM'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 50,
                    ),
                    child: MainHeaderPageViewIndicator(
                      activeIndex: 0,
                      count: 3,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => index % 2 == 0
                          ? ProductCard(
                              product: promotions[index ~/ 2],
                            )
                          : const SizedBox(width: 12),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
