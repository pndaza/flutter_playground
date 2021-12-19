import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/listview_test.dart';
import 'package:flutter_playground/screens/html_widget_test.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 96),
              child: ElevatedButton(
                  onPressed: () {
                    _open(context, const ListViewTest());
                  },
                  child: const Text('pageview test')),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 96),
              child: ElevatedButton(
                  onPressed: () {
                    _open(context, const HtmlWidgetTest());
                  },
                  child: const Text('HtmlWidget')),
            ),
          ]),
    );
  }

  void _open(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }
}
