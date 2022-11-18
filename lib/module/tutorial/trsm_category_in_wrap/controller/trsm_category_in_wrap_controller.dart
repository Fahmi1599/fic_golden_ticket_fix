import 'package:flutter/material.dart';
import '../../../debug/controller/debug_controller.dart';
import '../view/trsm_category_in_wrap_view.dart';

class TrsmCategoryInWrapController extends State<TrsmCategoryInWrapView>
    implements MvcController {
  static late TrsmCategoryInWrapController instance;
  late TrsmCategoryInWrapView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List categoryList = [
    "Food",
    "Drink",
    "Main Course",
    "Snack",
    "Ice Cream",
    "Fruits",
  ];

  String? selectedCategory;
}
