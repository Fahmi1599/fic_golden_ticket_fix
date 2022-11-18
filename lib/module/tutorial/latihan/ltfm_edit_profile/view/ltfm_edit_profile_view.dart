import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: const [
          //! 4. Tambahkan tombol Save
          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          //! 6. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //! 1. Pindahkan textfield email dan button reset password ke dalam Column
              //! yang ada di dalam Card
              //! 2. Beri jarak antara textfield dan reset button sebanyak 30
              //! gunakan SizedBox(height: n)
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Email",
                        hint: "Your email",
                        validator: Validator.email,
                        value: "demo@gmail.com",
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QTextField(
                        label: "Password",
                        hint: "Your password",
                        obscure: true,
                        validator: Validator.email,
                        value: "demo@gmail.com",
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.edit),
                        label: const Text("Edit Profile"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {
                          controller.save();
                          controller.setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
