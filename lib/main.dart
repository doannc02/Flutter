import 'package:flutter/material.dart';
import 'card.dart';
import 'flexible.dart';
import 'detector.dart';
import 'package:flutter/foundation.dart';
import 'firstpage.dart';
// TH04
void main() {
  //runApp(const MyCard());

  //runApp(const MyFlexible());

  runApp(const MyDetector());
}

// TH03

/*import 'package:flutter/material.dart';
import 'secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
    required this.title,
    required this.counter,
    required this.decrementCounter,
    required this.incrementCounter,
  });

  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<FirstPage> {
  void _onPressed() {
    widget.incrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              widget.counter.toString(),
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ElevatedButton(
              child: const Text('next screen'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                          widget.decrementCounter,
                          title: 'My Second Page',
                          counter: widget.counter,
                        )));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/