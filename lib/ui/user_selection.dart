import 'package:flutter/material.dart';
import 'package:my_home_library/model/user_identify.dart';

class UserSelection extends StatefulWidget {
  const UserSelection({super.key});

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  List<User> users = [
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
    const User(name: "藤原不比等"),
  ];

  int? specifiedUser;

  @override
  void initState() {
    super.initState();
    if (users.isNotEmpty) {
      specifiedUser = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext _, int index) {
                return RadioListTile<int>(
                  title: Text(users[index].name),
                  value: index,
                  groupValue: specifiedUser,
                  onChanged: (int? value) {
                    setState(() {
                      specifiedUser = value;
                    });
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const UserSelection();
                  },
                ),
              );
            },
            child: const Text("`次へ"),
          ),
        ],
      ),
    );
  }
}
