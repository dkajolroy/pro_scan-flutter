import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:pro_scan/screens/scanner/qr_bar_scanner.dart';

class BottomController extends StatelessWidget {
  final MobileScannerController cameraController;
  const BottomController({required this.cameraController, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTabs(
                onPress: () {},
                icon: Icons.history,
                title: 'History',
              ),
              CustomTabs(
                onPress: () {},
                icon: Icons.qr_code,
                title: 'Create new',
              ),
            ],
          ),
          const Spacer(),
          Divider(
            height: 1,
            color: Colors.grey[900],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.folder),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.image),
                  ),
                ],
              )),
              Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.white,
                    child: ValueListenableBuilder(
                      valueListenable: cameraController.cameraFacingState,
                      builder: (context, state, child) {
                        switch (state) {
                          case CameraFacing.front:
                            return const Icon(Icons.cameraswitch_outlined);
                          case CameraFacing.back:
                            return const Icon(Icons.cameraswitch);
                        }
                      },
                    ),
                    onPressed: () => cameraController.switchCamera(),
                  ),
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.grey[900],
                    child: ValueListenableBuilder(
                      valueListenable: cameraController.torchState,
                      builder: (context, state, child) {
                        switch (state) {
                          case TorchState.off:
                            return const Icon(Icons.flash_off,
                                color: Colors.white);
                          case TorchState.on:
                            return const Icon(Icons.flash_on,
                                color: Colors.yellow);
                        }
                      },
                    ),
                    onPressed: () => cameraController.toggleTorch(),
                  ),
                ]),
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
