import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../debug/controller/debug_controller.dart';
import '../view/ltsm_visibility_view.dart';

class LtsmVisibilityController extends State<LtsmVisibilityView>
    implements MvcController {
  static late LtsmVisibilityController instance;
  late LtsmVisibilityView view;
  bool visible = false;
  Timer? _timer;
  int start = 5;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
            visible = false;
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

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
