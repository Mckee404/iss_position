import 'package:flutter/material.dart';
import 'src/iss_now.dart';

void main() {
  runApp(const MyApp());
}

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
  String? _longitude;
  String? _latitude;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(
              builder: (context) {
                if(_longitude!=null){
                  return Center(
                    child: Text(
                      '経度:$_longitude\n緯度:$_latitude',
                    ),
                  );
                } else {
                  return const SizedBox(width: 0,height: 0,);
                }
                
              }
            ),
            ElevatedButton(onPressed: (){
              callAPI();
            }, child: const Text("call API"))
          ],
        ),
      ),
    );
  }
  void callAPI() async {
    final iss_now=await getIssNow();
    setState(() {
      _longitude=iss_now.iss_position?.longitude;
      _latitude=iss_now.iss_position?.latitude;
    });
  }
}