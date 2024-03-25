import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Name Change Example'),
      ),
      body: Center(
        // Consume the model using Consumer widget
        child: Consumer<NameModel>(
          builder: (context, nameModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Name: ${nameModel.name}',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20.0),
                TextField(
                  onChanged: (newValue) {
                    nameModel.changeName(newValue);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter new name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
