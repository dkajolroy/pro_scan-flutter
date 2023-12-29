import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShowScanedScreen extends StatelessWidget {
  final String? data;
  final BarcodeType dataType;
  ShowScanedScreen({required this.dataType, required this.data, super.key});

  final String date = DateFormat("MMM-dd-yyyy").format(DateTime.now());
  final String time = DateFormat("hh:mm a").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(10),
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blueAccent, width: 1)),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QrImageView(
                      data: data ?? "",
                      version: QrVersions.auto,
                      size: 100.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataType.toString().toUpperCase().substring(12),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text(
                          "$date,  $time",
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 10,
              ),
              SelectableText(data ?? "..."),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              const Divider(
                height: 1,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    mini: true,
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: data ?? ""));
                    },
                    child: const Icon(
                      Icons.copy,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    mini: true,
                    onPressed: () {
                      Get.snackbar("Working process ",
                          "This feture upcomming listed, please wait for next version !",
                          icon: const Icon(
                            Icons.warning,
                            color: Colors.yellow,
                          ),
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.blueAccent,
                          colorText: Colors.white);
                    },
                    child: const Icon(
                      Icons.forward,
                      size: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
