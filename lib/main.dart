import 'package:streams_examples_live/ip_address/ip_address.dart';
import 'package:streams_examples_live/ip_address/ip_address_repository.dart';
import 'package:streams_examples_live/location/generate_locations.dart';
import 'package:streams_examples_live/location/location.dart';

final IpAddressRepository repository = IpAddressRepository();

void main() async {
  final locations = generateLocations();
  final ipAddress = repository.generateIPAddresses();

  // await for (Location location in locations) {
  //   print(location);
  // }

  locations.listen(
    (l) {
      print("Neue Location \\o/ lat: ${l.latitude}, long: ${l.longitude}");
    },
  );

  ipAddress.listen(
    (actualIp) {
      print("$actualIp");
    },
  );

  await for (IpAddress ipAddress in ipAddress) {
    print(ipAddress);
  }

  //locations.listen(printLocation);
}

void printLocation(Location l) {
  print("Neue Location \\o/ lat: ${l.latitude}, long: ${l.longitude}");
}
