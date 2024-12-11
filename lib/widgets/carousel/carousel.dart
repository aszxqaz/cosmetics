import 'package:flutter/material.dart';

class MainHeaderPageView extends StatefulWidget {
  const MainHeaderPageView({super.key});

  @override
  State<MainHeaderPageView> createState() => _MainHeaderPageViewState();
}

class _MainHeaderPageViewState extends State<MainHeaderPageView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          "assets/images/main-screen-header/main-screen-header-image-1.png",
        ),
        Image.asset(
          fit: BoxFit.cover,
          "assets/images/main-screen-header/main-screen-header-image-2.png",
        )
      ],
    );
  }
}

class MainHeaderPageViewIndicator extends StatelessWidget {
  const MainHeaderPageViewIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
  });

  final int activeIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        count * 2 - 1,
        (index) => index % 2 == 0
            ? Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == activeIndex * 2
                      ? const Color.fromRGBO(217, 217, 217, 1)
                      : const Color.fromRGBO(217, 217, 217, 0.5),
                ),
              )
            : const SizedBox(
                width: 4,
              ),
      ),
    );
    // return ListView.separated(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: count,
    //   separatorBuilder: (_, __) => const SizedBox(width: 8),
    //   itemBuilder: (context, index) => Container(
    //     width: 8,
    //     height: 8,
    //     decoration: BoxDecoration(
    //       shape: BoxShape.circle,
    //       color: index == activeIndex * 2
    //           ? const Color.fromRGBO(217, 217, 217, 1)
    //           : const Color.fromRGBO(217, 217, 217, 0.5),
    //     ),
    //   ),
    // );
  }
}
