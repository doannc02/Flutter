import 'package:flutter/material.dart';

class News {
  final DateTime date;
  final String title;
  final String text;

  const News({
    required this.date,
    required this.title,
    required this.text,
  });
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My card',
      home: CardWidget(),
    );
  }
}

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  CardWidgetState createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {
  List<News> newsList = [
    News(
      date: DateTime(2023, 10, 11),
      title: 'First news',
      text: 'this is first news',
    ),
    News(
      date: DateTime(2023, 10, 10),
      title: 'Second news',
      text: 'this is second news',
    ),
    News(
      date: DateTime(2002, 02, 26),
      title: 'My birthday',
      text: 'Hello world',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(news: newsList[index]);
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
                "https://play-lh.googleusercontent.com/Iip-8Yn3PLAzecCMb4ZaHTvFObl3ETUWZmd5zLflhbB6BXKyNc5aM4hrGAA9NXSs7i0=w240-h480-rw"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:
              Text("${news.date.day}/${news.date.month}/${news.date.year}"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                news.title,
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(news.text),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: const Text('Share')),
                TextButton(onPressed: () {}, child: const Text('Bookmark')),
                TextButton(onPressed: () {}, child: const Text('Link')),
              ],
            )
          ],
        ),
      ),
    );
  }
}