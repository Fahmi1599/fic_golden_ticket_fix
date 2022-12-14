import 'package:flutter/material.dart';
import '../../../../debug/controller/debug_controller.dart';
import '../view/ltsm_slide_animation_view.dart';

class LtsmSlideAnimationController extends State<LtsmSlideAnimationView>
    implements MvcController {
  static late LtsmSlideAnimationController instance;
  late LtsmSlideAnimationView view;
  bool animate = false;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
