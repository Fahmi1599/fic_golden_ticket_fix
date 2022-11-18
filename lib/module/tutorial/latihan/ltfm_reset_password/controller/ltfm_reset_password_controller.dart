import 'package:flutter/material.dart';
import '../../../../debug/controller/debug_controller.dart';
import '../view/ltfm_reset_password_view.dart';

class LtfmResetPasswordController extends State<LtfmResetPasswordView>
    implements MvcController {
  static late LtfmResetPasswordController instance;
  late LtfmResetPasswordView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doResetPassword() async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Reset Password Success',
            style: TextStyle(fontSize: 24),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Please Check your email!'),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
