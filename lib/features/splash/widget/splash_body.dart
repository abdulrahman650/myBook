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
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimations();

  }
  Future<void> goHome() async {
    await GoRouter.of(context).push("/homeView");

  }



  @override
void dispose(){
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Container(
     color:AppColors.primary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                curve: Curves.easeInOut,
                child: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.8, end: 1.0),
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeOutBack,
                  builder: (context, scale, child) =>
                      Transform.scale(scale: scale, child: child),
                  child:
                      // Image.asset("assets/images/logo_fg.png")

                 Text("My Books",style:text.displaySmall!.copyWith(
                   fontWeight: FontWeight.bold,
                   fontSize: 70,
                   fontFamily: Assets.kGtSectraFine,
                   color: Colors.white,
                 ),

                  textAlign: TextAlign.center,
                ),
                ),
              ),
              Gap(5),
              AnimatedBuilder(
                animation: slidingAnimation,
                builder: (context,_){
                  return SlideTransition(position: slidingAnimation,
                      child: Text("Reed Free Books",style: text.titleMedium!.copyWith(
                        fontFamily: Assets.kGtSectraFine,
                        color: Colors.white,
                      ),
                        textAlign: TextAlign.center,

                      ));
                },

              )

            ],
          ),
        ),

    );
  }
  void initAnimations(){
    animationController = AnimationController(vsync: this,
      duration: const   Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 4), end: Offset.zero)
        .animate(animationController);
    animationController.forward();


    Future.delayed(
      const Duration(milliseconds: 200),
          () => setState(() => _opacity = 1.0),
    );
    Future.delayed(const Duration(seconds: 4), goHome);
  }
}
