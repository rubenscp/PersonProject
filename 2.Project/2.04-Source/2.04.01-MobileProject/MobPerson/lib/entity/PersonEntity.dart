import 'package:flutter/foundation.dart';

import 'package:MobPerson/entity/ActingAreaEntity.dart';
import 'package:MobPerson/entity/InterestAreaEntity.dart';
import 'package:MobPerson/entity/InterestProductCultureEntity.dart';
import 'package:MobPerson/entity/SchoolingEntity.dart';
import 'package:MobPerson/enumerate/FarmSizeEnum.dart';
import 'package:MobPerson/enumerate/VisitNumberEnum.dart';
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
  List<ActingAreaEntity> actingAreas;
  List<InterestProductCultureEntity> interestProductsCultures;
  List<InterestAreaEntity> interestAreas;
  String jobRole;
  double cpf;
  String mainAddress;
  String addressComplement;
  int cep;
  FarmSizeEnum farmSize;
  List<SchoolingEntity> schoolingEntity;
  VisitNumberEnum visitNumber;
  DateTime dateOfLastVisit;
  bool receiveInformationFromEmbrapa;
  String comments;

  PersonEntity({
    @required this.id,
    @required this.fullName,
    this.gender,
    @required this.email,
    @required this.personalPhone,
    this.commercialPhone,
    this.cityEntity,
    this.institutionAutonomousEnum,
    this.institutionName,
    this.actingAreas,
    this.interestProductsCultures,
    this.interestAreas,
    this.jobRole,
    this.cpf,
    this.mainAddress,
    this.addressComplement,
    this.cep,
    this.farmSize,
    this.schoolingEntity,
    this.visitNumber,
    this.dateOfLastVisit,
    this.receiveInformationFromEmbrapa,
    this.comments,
  });
}
