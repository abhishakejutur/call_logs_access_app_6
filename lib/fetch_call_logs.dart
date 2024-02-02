// ignore_for_file: avoid_print

import 'package:call_log/call_log.dart';

void fetchCallLogs() async {
  Iterable<CallLogEntry> entries = await CallLog.get();
  for (var entry in entries) {
    print('Number: ${entry.number}');
    print('Name: ${entry.name}');
    print('Type: ${entry.callType}'); // changed from 'type' to 'callType'
    print('Timestamp: ${entry.timestamp}');
    print('Duration: ${entry.duration}');
  }
}
