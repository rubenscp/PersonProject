import 'package:flutter/foundation.dart';
import 'package:MobPerson/entity/FederationUnityEntity.dart';

class CityEntity {
  String id;
  FederationUnityEntity federationUnity;
  String name;

  CityEntity({
    @required this.id,
    @required this.federationUnity,
    @required this.name,
  });
}
