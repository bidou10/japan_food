import 'package:flutter/material.dart';

class restaurant_Infos extends StatelessWidget {
  const restaurant_Infos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(labelText: 'Sushis'),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Buy',
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
