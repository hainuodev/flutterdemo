import 'package:flutter/material.dart';

class T1App extends StatefulWidget {
  const T1App({Key? key}) : super(key: key);

  @override
  _T1AppState createState() => _T1AppState();
}

class _T1AppState extends State<T1App> {
  String fileName = 'head_female.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyPicView(picName: fileName),
              ElevatedButton(
                  onPressed: () {
                    String tempFileName = 'head_female.png';
                    if (fileName == 'head_female.png') {
                      tempFileName = 'head_male.png';
                    }
                    setState(() {
                      fileName = tempFileName;
                    });
                  },
                  child: const Text('切换图片'))
            ],
          ),
        ),
      ),
    );
  }
}

class MyPicView extends StatefulWidget {
  final String picName;

  const MyPicView({Key? key, required this.picName}) : super(key: key);

  @override
  _MyPicViewState createState() => _MyPicViewState();
}

class _MyPicViewState extends State<MyPicView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/${widget.picName}'),
    );
  }
}
