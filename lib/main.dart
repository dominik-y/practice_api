import 'package:flutter/material.dart';
import 'data/networking/api_call.dart';
import 'data/model/books.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiCall apiCall = ApiCall();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('API Testing'),
      ),
      body: Center(
        child: FutureBuilder<Books>(
          future: apiCall.fetchAlbum(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  // Text('$snapshot.data'),
                  // Text(snapshot.data!.authorName),
                  // Spacer(),
                  // Text(snapshot.data!.firstSentence),
                  Spacer(),
                  Text('Data: '),
                  Spacer(),
                  // Text('$snapshot.data!.coverEditionKey'),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
