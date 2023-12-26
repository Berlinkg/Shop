import 'package:dots_indicator/dots_indicator.dart';
import 'package:first/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'notifier/welcome_notofier.dart';

class Welcome extends ConsumerWidget {
  Welcome({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    appOnboardingPage(
                      _controller,
                      image: "assets/images/1.png",
                      title: "seee an learnig what you want ",
                      subTitle: "its jast for you r pactis",
                      index: 1,
                      context: context,
                    ),
                    appOnboardingPage(
                      _controller,
                      image: "assets/images/2.png",
                      title: "seee an learnig what you want ",
                      subTitle: "its jast for you r pactis",
                      index: 2,
                      context: context,
                    ),
                    appOnboardingPage(
                      _controller,
                      image: "assets/images/3.png",
                      title: "seee an learnig what you want ",
                      subTitle: "its jast for you r pactis",
                      index: 3,
                      context: context,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 30,
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//   appOnboardingPage(PageController controller,
//       {required String image,
//       required String title,
//       required String subTitle,
//       required int index,
//       required BuildContext context}) {}
// }
