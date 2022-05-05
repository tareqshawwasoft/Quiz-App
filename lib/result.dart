import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/main.dart';
class Result  extends StatelessWidget {
final Function() reset;
Result(this.reset);

@override
Widget build(BuildContext context) {
return  Center(
child: Column(
children: [
const Text(
'Done', style: TextStyle(fontSize: 20),
),
ElevatedButton(onPressed: reset, child: const Text('Restart'
, style: TextStyle(
fontStyle: FontStyle.italic,
fontSize: 30,
),
),
)
],
),

);
}
}