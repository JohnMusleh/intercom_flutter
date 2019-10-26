import 'package:flutter/material.dart';
import 'package:intercom_flutter/intercom_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Intercom.initialize(
    'ackiqn5b',
    androidApiKey: 'android_sdk-6e057289e92b9327a244a4157a7805a8da142014',
    iosApiKey: 'ios_sdk-a749554855c29d7d6f03822e345843ba56237a3b',
  );
  await Intercom.registerIdentifiedUser(email: 'john.musleh@gmail.com');
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Intercom example app'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              Intercom.displayMessenger();
            },
            child: Text('Show messenger'),
          ),
        ),
      ),
    );
  }
}
