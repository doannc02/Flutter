import 'package:flutter/material.dart';

class MyDetector extends StatelessWidget {
  const MyDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Detector',
      home: DetectorWidget(),
    );
  }
}

class DetectorWidget extends StatefulWidget {
  const DetectorWidget({super.key});

  @override
  DetectorWidgetState createState() => DetectorWidgetState();
}

class DetectorWidgetState extends State<DetectorWidget> {
  String log = '';

  void clear() {
    setState(() {
      log = '';
    });
  }

  void logGesture(String msg) {
    setState(() {
      log += '\n';
      log += msg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gesture widget',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: Colors.cyan,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                width: 256,
                height: 256,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Gesture detector'),
                ),
              ),
              onTap: () => {logGesture('on tap')},
              onDoubleTap: () => {logGesture('double tap')},
              onTapDown: (detail) =>
              {logGesture('tap ${detail.localPosition}')},
              onLongPress: () => {logGesture('long tap')},
            ),
            Text(log),
            ElevatedButton(onPressed: () => clear(), child: const Text('Clear'))
          ],
        ),
      ),
    );
  }
}