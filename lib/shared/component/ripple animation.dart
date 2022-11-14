import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import 'package:sboba_user_app/shared/component/circle_painter.dart';
import 'package:sboba_user_app/shared/component/curve_wave.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

class RipplesAnimation extends StatefulWidget {
  const RipplesAnimation({
    Key? key,
    this.size = 25.0,
    this.color = Colors.transparent,
    this.onPressed,
    this.child,
  }) : super(key: key);
  final double size;
  final Color color;
  final Widget? child;
  final VoidCallback? onPressed;
  @override
  _RipplesAnimationState createState() => _RipplesAnimationState();
}

class _RipplesAnimationState extends State<RipplesAnimation>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  Widget _button() {
    return InkWell(
      onTap: (() => Get.back()),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.size),
          child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: <Color>[
                    myGreen,
                    Color.lerp(widget.color, myWhite, .01)!
                  ],
                ),
              ),
              child: ScaleTransition(
                scale: Tween(begin: 0.95, end: 1.0).animate(
                  CurvedAnimation(
                    parent: _controller!,
                    curve: const CurveWave(),
                  ),
                ),
                child: Icon(
                  Icons.done,
                  color: myWhite,
                  size: 50,
                ),
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(_controller!, color: myGreen),
      child: SizedBox(
        width: widget.size * 10.125,
        height: widget.size * 10.125,
        child: _button(),
      ),
    );
  }
}
