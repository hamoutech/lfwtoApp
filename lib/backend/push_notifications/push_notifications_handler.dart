import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/lfwto_splsh.gif',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Test1': ParameterData.none(),
  'articles': (data) async => ParameterData(
        allParams: {
          'article': getParameter<DocumentReference>(data, 'article'),
        },
      ),
  'calendrier': ParameterData.none(),
  'championnat': ParameterData.none(),
  'coupe': ParameterData.none(),
  'homePage': ParameterData.none(),
  'langue': ParameterData.none(),
  'ligue': ParameterData.none(),
  'matchDay': ParameterData.none(),
  'matchDayLive': (data) async => ParameterData(
        allParams: {
          'link': getParameter<String>(data, 'link'),
          'youtubeLink': getParameter<String>(data, 'youtubeLink'),
        },
      ),
  'notifications': ParameterData.none(),
  'parametres': ParameterData.none(),
  'resultats': ParameterData.none(),
  'pvDiscipline': (data) async => ParameterData(
        allParams: {
          'pdflink': getParameter<String>(data, 'pdflink'),
        },
      ),
  'Bulletins': (data) async => ParameterData(
        allParams: {
          'pdflink': getParameter<String>(data, 'pdflink'),
        },
      ),
  'beginpage': ParameterData.none(),
  'partenaireOfficiels': ParameterData.none(),
  'beginpageloggedin': ParameterData.none(),
  'matchdayAds': (data) async => ParameterData(
        allParams: {
          'link': getParameter<String>(data, 'link'),
          'youtubelink': getParameter<String>(data, 'youtubelink'),
        },
      ),
  'championnatClassement': ParameterData.none(),
  'matchDayCopy': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
