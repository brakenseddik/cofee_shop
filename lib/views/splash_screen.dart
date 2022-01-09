import 'package:cofee_shop/components/image_slider.dart';
import 'package:cofee_shop/theme.dart';
import 'package:cofee_shop/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            SizedBox(
              height: size.height / 2,
              child: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const SingleChildScrollView(child: ImageSlider());
                },
                itemCount: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  activeDotColor: AppTheme.primaryColor,
                  dotColor: AppTheme.darkColor.withOpacity(0.3),

                  dotHeight: 12,
                  dotWidth: 12,
                  type: WormType.normal,
                  // strokeWidth: 5,
                ),
              ),
            ),
            const Spacer(),
            const MainButton(),
            const Spacer(),
          ],
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/wallpaper.jpg'))),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: const Text('Get Started',
            style: TextStyle(
                color: AppTheme.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 18)),
      ),
    );
  }
}
