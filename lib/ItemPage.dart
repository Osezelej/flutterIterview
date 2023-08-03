import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  final String endpoint = '/v1/marketData/3osezelejoseph@gmail.com';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final dio = Dio();

  void getHttp() async {
    final response = await dio.get('https://dart.dev');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 175, 75),
        title: Text(
          '(question 1) api consumption',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
