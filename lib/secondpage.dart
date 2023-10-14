import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage(
      this.decrementCounter, {
        super.key,
        required this.title,
        required this.counter,
      });

  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MySecondPageState();
  }
}

class _MySecondPageState extends State<SecondPage> {
  void _onPressed() {
    widget.decrementCounter(null);
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
              super.widget.counter.toString(),
              style: Theme.of(context).textTheme.displaySmall,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Decrement',
        backgroundColor: Colors.red,
        child: const Icon(Icons.indeterminate_check_box),
      ),
    );
  }
}
