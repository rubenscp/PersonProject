import 'package:MobPerson/entity/ActingAreaEntity.dart';
import 'package:MobPerson/entity/InterestAreaEntity.dart';
import 'package:MobPerson/entity/InterestProductCultureEntity.dart';
import 'package:MobPerson/enumerate/FarmSizeEnum.dart';
import 'package:flutter/foundation.dart';

import 'package:MobPerson/entity/CityEntity.dart';
import 'package:MobPerson/enumerate/GenderEnum.dart';
import 'package:MobPerson/enumerate/InstitutionAutonomousEnum.dart';

class PersonEntity {
  String id;
  String fullName;
  GenderEnum gender;
  String email;
  String personalPhone;
  String commercialPhone;
  CityEntity cityEntity;
  InstitutionAutonomousEnum institutionAutonomousEnum;
  String institutionName;
  ActingAreaEntity actingArea;
  InterestProductCultureEntity interestProductCulture;
  InterestAreaEntity interestArea;
  String jobRole;
  int cpf;
  String mainAddress;
  String addressComplement;
  int cep;
  FarmSizeEnum farmSize;

  PersonEntity({
    @required this.id,
    @required this.fullName,
    @required this.gender,
    @required this.email,
    @required this.personalPhone,
    @required this.commercialPhone,
    @required this.cityEntity,
    @required this.institutionAutonomousEnum,
    @required this.institutionName,
    @required this.actingArea,
    @required this.interestProductCulture,
    @required this.interestArea,
    @required this.jobRole,
    @required this.cpf,
    @required this.mainAddress,
    @required this.addressComplement,
    @required this.cep,
    @required this.farmSize,
    
    
    
  });
}
