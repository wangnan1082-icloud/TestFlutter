import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:http/http.dart' as http;

// class CrashListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String title = '123Title';
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       backgroundColor: Colors.lightBlue,
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: _GroupWidget(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (BuildContext context, int position) {
            return getRow(position);
          }));
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      // title
      child: Text("Row $i + ${widgets[i]["crashType"]}"),
    );
  }

  loadData() async {
    // https://jsonplaceholder.typicode.com/posts
    String dataURL = "http://127.0.0.1:8085/questionsData";
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = json.decode(response.body);
    });
  }
}