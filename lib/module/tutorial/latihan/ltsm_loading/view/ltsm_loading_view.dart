import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // ignore: avoid_print
              if (controller.loading == true) const CircularProgressIndicator(),
              if (controller.loading == true)
                const Text("Loading akan berhenti dalam 5 detik"),

              ElevatedButton(
                  onPressed: () {
                    controller.loading = true;
                    controller.setState(() {});
                    print("testing${controller.loading}");

                    Future.delayed(const Duration(seconds: 5), () {
                      controller.loading = false;
                      controller.setState(() {});
                      print("testing${controller.loading}");
                    });
                  },
                  child: const Text("Button to show Loading")),
              /*
              ? Buat variabel loading di dalam State/Controller
              ! bool loading = false;


              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                CircularProgressIndicator();

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.loading = controller.loading!;
              controller.setState((){});
              */
                
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
