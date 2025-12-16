import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/conestent/assets.dart';
import '../../../core/conestent/colors.dart';
import '../../home/view/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  Future<void> _checkLogin() async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (c) => HomeView()),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 200),
      () => setState(() => _opacity = 1.0),
    );
    Future.delayed(const Duration(seconds: 10), _checkLogin);
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Container(
     color:AppColors.primary,
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _opacity,
            curve: Curves.easeInOut,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.8, end: 1.0),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutBack,
                  builder: (context, scale, child) =>
                      Transform.scale(scale: scale, child: child),
                  child: Image.asset(Assets.imagesLogo),
                ),
                Gap(5),
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.8, end: 1.0),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutBack,
                  builder: (context, scale, child) =>
                      Transform.scale(scale: scale, child: child),
                  child: Text("Reed Free Books",style: text.titleMedium,
                    textAlign: TextAlign.center,
                  ))



              ],
            ),
          ),
        ),

    );
  }
}
