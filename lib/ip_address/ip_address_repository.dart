import 'dart:async';
import 'dart:math';

import 'package:streams_examples_live/ip_address/ip_address.dart';

class IpAddressRepository {
  Stream<IpAddress> generateIPAddresses() async* {
    final random = Random();

    while (true) {
      final part1 = random.nextInt(256);
      final part2 = random.nextInt(256);
      final part3 = random.nextInt(256);
      final part4 = random.nextInt(256);

      final ipAddress = '$part1.$part2.$part3.$part4';
      yield IpAddress(ipAddress);

      await Future.delayed(Duration(seconds: 1));
    }
  }
}
