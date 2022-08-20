import 'package:flutter/material.dart';
import 'package:flutter_counter/objects/Player.dart';

class InputInformation extends StatefulWidget {
  const InputInformation({Key? key}) : super(key: key);
  @override
  State<InputInformation> createState() => _InputInformationState();
}

class _InputInformationState extends State<InputInformation>
    with WidgetsBindingObserver {
  TextEditingController nameController = TextEditingController();
  Player player = Player.Default();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin người chơi'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Tên Người Chơi'),
                  controller: nameController,
                  onChanged: (text) => player.setName(text),
                ),
                ElevatedButton(
                  onPressed: () {
                    //Navigator.of(context).pop(player);
                    Navigator.pop(context, player);
                  },
                  child: Text('OKE'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
