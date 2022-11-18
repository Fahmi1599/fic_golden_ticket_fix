import 'package:flutter/material.dart';
import '../../../debug/controller/debug_controller.dart';
import '../view/trsm_animation_view.dart';

class TrsmAnimationController extends State<TrsmAnimationView>
    implements MvcController {
  static late TrsmAnimationController instance;
  late TrsmAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool enabled = false;
}
