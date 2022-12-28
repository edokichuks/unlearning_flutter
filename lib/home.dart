import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:unlearning_flutter/exception.dart';
import 'package:unlearning_flutter/mock_services.dart';
import 'package:unlearning_flutter/user_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<UserDetails>> getUserDetails() async {
    try {
      return await MockAPIServices.getUser(shouldThrowException: true);
    } on ChuksException {
      rethrow;
    } catch (ex) {
      rethrow;
    } finally {
      log('completed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mock API'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<UserDetails>>(
        future: getUserDetails(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            if (snapshot.error is ChuksException) {
              final ChuksException err = snapshot.error as ChuksException;
              return Center(
                child: Text(
                    '${err.message.toString()} with a status code of ${err.errorCode}'),
              );
            }
          }
          if (snapshot.hasData) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final userDetails = snapshot.data![index];
                  return ListTile(
                    title: Text(
                      userDetails.firstName,
                      style: const TextStyle(fontSize: 24),
                    ),
                    subtitle: Text('email: '),
                  );
                },
              );
            }
          }
          return Offstage();
        },
      ),
    );
  }
}
