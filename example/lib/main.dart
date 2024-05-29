import 'package:flutter/material.dart';
import 'package:photox_pro/photox_pro.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DismissMode.swipeVertical"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('IMAGES'),
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: PhotoX(
                dismissMode: DismissMode.swipeVertical,
                viewportFraction: 0.8,
                //thumbnailMargin: const EdgeInsets.symmetric(horizontal: 10.0),
                thumbnailPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                items: [
                  PhotoXItem(
                    id: "1",
                    resource: "assets/img1.jpeg",
                    isAsset: true
                  ),
                  PhotoXItem(
                    id: "2",
                    resource: "https://picsum.photos/1020/1020",
                    isAsset: false
                  ),
                  PhotoXItem(
                    id: "3",
                    resource: "https://picsum.photos/1021/1021",
                    isAsset: false
                  ),
                  PhotoXItem(
                    id: "4",
                    resource: "https://picsum.photos/1022/1022",
                    isAsset: false
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}
