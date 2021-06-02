
import 'package:flutter/material.dart';

import '../../components.dart';

class SearchUserScreen extends StatefulWidget {
  static const String id = '/searchUser';

  const SearchUserScreen({Key? key}) : super(key: key);

  @override
  _SearchUserScreenState createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReturnableTopBar(
        title: TextField(
          controller: _searchController,
        ),
      ),
      body: StreamBuilder(
        builder: (context, snapshot) {
          return Container();
        },
      ),
    );
  }
}

