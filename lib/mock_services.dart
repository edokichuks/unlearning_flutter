import 'package:unlearning_flutter/exception.dart';
import 'package:unlearning_flutter/user_details.dart';

class MockAPIServices {
  static Future<List<UserDetails>> getUser(
      {bool shouldThrowException = false}) async {
    await Future.delayed(const Duration(seconds: 12));

    if (shouldThrowException) {
      throw ChuksException(
          message: 'Error from MockApiServices', errorCode: '201');
    }
    return UserDetails.usersDetails;
  }
}
