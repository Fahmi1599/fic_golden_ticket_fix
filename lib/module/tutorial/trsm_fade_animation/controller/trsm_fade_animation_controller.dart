import 'package:flutter/material.dart';
import '../../../debug/controller/debug_controller.dart';
import '../view/trsm_fade_animation_view.dart';

class TrsmFadeAnimationController extends State<TrsmFadeAnimationView>
    implements MvcController {
  static late TrsmFadeAnimationController instance;
  late TrsmFadeAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool visible = false;
}
