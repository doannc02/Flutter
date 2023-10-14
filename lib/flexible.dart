import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flexible',
      home: FlexWidget(),
    );
  }
}

class FlexWidget extends StatefulWidget {
  const FlexWidget({super.key});

  @override
  FlexibleWidgetState createState() => FlexibleWidgetState();
}

class FlexibleWidgetState extends State<FlexWidget> {
  bool topTightFit = false;
  bool botExpanded = false;

  void toggleTop() {
    setState(() {
      topTightFit = !topTightFit;
    });
  }

  void toggleBot() {
    setState(() {
      botExpanded = !botExpanded;
    });
  }

  Container topCon = Container(
    constraints: const BoxConstraints(minHeight: 100.0, maxHeight: 150.0),
    decoration: BoxDecoration(
      border: Border.all(width: 5.0, color: Colors.red),
      color: Colors.yellow,
    ),
    child: const Text("Top Container"),
  );

  Container botCon = Container(
    constraints: const BoxConstraints(minHeight: 100.0, maxHeight: 150.0),
    decoration: BoxDecoration(
      border: Border.all(width: 5.0, color: Colors.red),
      color: Colors.green,
    ),
    child: const Text("Bottom Container"),
  );

  @override
  Widget build(BuildContext context) {
    Widget topWid = Flexible(
      fit: topTightFit ? FlexFit.tight : FlexFit.loose,
      child: topCon,
    );
    Widget botWid = botExpanded ? Expanded(child: botCon) : botCon;
    String toolTop = "Top ${topTightFit ? "tight" : "loose"}";
    String toolBot = "Bot ${botExpanded ? "expanded" : "not"}";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible widget'),
        actions: [
          ElevatedButton.icon(
            onPressed: () => toggleTop(),
            icon: Icon(topTightFit ? Icons.arrow_upward : Icons.arrow_downward),
            label: Text(toolTop),
          ),
          ElevatedButton.icon(
            onPressed: () => toggleBot(),
            icon: Icon(botExpanded ? Icons.arrow_downward : Icons.arrow_upward),
            label: Text(toolBot),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            topWid,
            botWid,
          ],
        ),
      ),
    );
  }
}