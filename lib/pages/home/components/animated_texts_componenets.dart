import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(5),
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                AppConstants.flutterLogo,
                // height: !ScreenHelper.isMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.14
                //     : ScreenHelper.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 500,
                // width: !ScreenHelper.isMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.14
                //     : ScreenHelper.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
