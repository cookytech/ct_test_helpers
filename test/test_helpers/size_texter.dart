import 'package:flutter/material.dart';

class SizeTexter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).size}');
    return Container(
      child: Text('${MediaQuery.of(context).size}'),
    );
  }
}
