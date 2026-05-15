import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HalApi extends StatefulWidget {
  const HalApi({super.key});

  @override
  State<HalApi> createState() => _HalApiState();
}

class _HalApiState extends State<HalApi> {
  Future<List<dynamic>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      data[index]["image"],
                      height: 100,
                      width: 100,
                    ),
                    title: Text(data[index]["title"]),
                    subtitle: Text(data[index]["price"].toString()),
                    trailing: Icon(Icons.shopping_bag),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
