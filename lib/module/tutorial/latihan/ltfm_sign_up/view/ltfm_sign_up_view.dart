import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                hint: "Your email",
                validator: Validator.required,
                value: "demo@gmail.com",
                onChanged: (emailValue) {
                  controller.email = emailValue;
                  controller.setState(() {});
                },
              ),
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                value: "123456",
                onChanged: (values) {
                  controller.password = values;
                  controller.setState(() {});
                  print("password: $values");
                },
              ),
              QTextField(
                label: "Password",
                hint: "Your password",
                obscure: true,
                validator: Validator.required,
                onChanged: (value) {
                  controller.confirmPassword = value;
                  controller.setState(() {});
                  print("password confirm: $value");
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                onPressed: () {
                  if (controller.password == controller.confirmPassword) {
                    controller.doLogin();
                  } else {
                    controller.doWrongPassword();
                  }
                  controller.setState(() {});
                  print("password : ${controller.password}");
                  print("password confirm btn: ${controller.confirmPassword}");
                },
              )

              //! 1. Buatlah textfield email
              //! 2. Buatlah textfield password
              //! 3. Buatlah textfield confirm password
              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
