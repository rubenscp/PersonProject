import 'dart:ffi';

import 'package:MobPerson/entity/CommentEntity.dart';
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

// ======================================================================================
// Use the website json to dart to convert: https://javiercbk.github.io/json_to_dart/
// ======================================================================================

class PersonEntity {
  int id;
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
  FarmSizeEnum farmSizeEnum;
  List<SchoolingEntity> schoolingsEntity;
  VisitNumberEnum visitNumberEnum;
  DateTime dateOfLastVisit;
  bool receiveInformationFromEmbrapa;
  List<CommentEntity> commentsEntity;

  // Constructor
  PersonEntity({
    @required id,
    @required fullName,
    gender,
    @required email,
    @required personalPhone,
    commercialPhone,
    cityEntity,
    institutionAutonomousEnum,
    institutionName,
    actingAreas,
    interestProductsCultures,
    interestAreas,
    jobRole,
    cpf,
    mainAddress,
    addressComplement,
    cep,
    farmSizeEnum,
    schoolingsEntity,
    visitNumberEnum,
    dateOfLastVisit,
    receiveInformationFromEmbrapa,
    commentsEntity,
  }) {
    this.id = id;
    this.fullName = fullName;
    this.gender = gender;
    this.email = email;
    this.personalPhone = personalPhone;
    this.commercialPhone = commercialPhone;
    // this.cityEntity = cityEntity;
  }

  // PersonEntity(
  //   @required int id,
  //   @required String fullName,
  //   GenderEnum gender,
  //   @required String email,
  //   @required String personalPhone,
  //   String commercialPhone,
  //   CityEntity cityEntity,
  //   InstitutionAutonomousEnum institutionAutonomousEnum,
  //   String institutionName,
  //   List<ActingAreaEntity> actingAreas,
  //   List<InterestProductCultureEntity> interestProductsCultures,
  //   List<InterestAreaEntity> interestAreas,
  //   String jobRole,
  //   double cpf,
  //   String mainAddress,
  //   String addressComplement,
  //   double cep,
  //   FarmSizeEnum farmSizeEnum,
  //   List<SchoolingEntity> schoolingsEntity,
  //   VisitNumberEnum visitNumberEnum,
  //   DateTime dateOfLastVisit,
  //   bool receiveInformationFromEmbrapa,
  //   List<CommentEntity> commentsEntity,
  // );

  // Getter and setter methods

  // int get id {
  //   return id;
  // }

  // String get fullName {
  //   print('PersonEntity - método get fullName 1');
  //   print(fullName);
  //   print('PersonEntity - método get fullName 2');
  //   return fullName;
  // }

  // String get email {
  //   return email;
  // }

  String genderFormatted() {
    switch (this.gender) {
      case GenderEnum.MALE:
        return 'Masculino';

      case GenderEnum.FEMININE:
        return 'Feminino';

      default:
        return '-';
    }
  }

  String personalPhoneFormatted() {
    return this.personalPhone != null ? this.personalPhone.toString() : "-";
  }

  String commercialPhoneFormatted() {
    return this.commercialPhone != null ? this.commercialPhone.toString() : "-";
  }

  String cityEntityFormatted() {
    return this.cityEntity != null ? this.cityEntity.name : "-";
  }

  String institutionAutonomousEnumFormatted() {
    return this.institutionAutonomousEnum != null
        ? this.institutionAutonomousEnum
        : "-";
  }

  String institutionNameFormatted() {
    return this.institutionName != null ? this.institutionName : "-";
  }

  // List<ActingAreaEntity> actingAreas;
  // List<InterestProductCultureEntity> interestProductsCultures;
  // List<InterestAreaEntity> interestAreas;

  String jobRoleFormatted() {
    return this.jobRole != null ? this.jobRole : "-";
  }

  String cpfFormatted() {
    return this.cpf != null ? this.cpf.toString() : "-";
  }

  String mainAddressFormatted() {
    return this.mainAddress != null ? this.mainAddress : "-";
  }

  String addressComplementFormatted() {
    return this.addressComplement != null ? this.addressComplement : "-";
  }

  String cepFormatted() {
    return this.cep != null ? this.cep.toString() : "-";
  }

  String farmSizeFormatted() {
    return this.farmSizeEnum != null ? this.farmSizeEnum.toString() : "-";
  }

  // List<SchoolingEntity> schoolingEntity;

  String visitNumberFormatted() {
    return this.visitNumberEnum != null ? this.visitNumberEnum : "-";
  }

  String dateOfLastVisitFormatted() {
    return this.dateOfLastVisit != null ? this.dateOfLastVisit : "-";
  }

  String receiveInformationFromEmbrapaFormatted() {
    return this.receiveInformationFromEmbrapa != null
        ? this.receiveInformationFromEmbrapa.toString()
        : "-";
  }

  // List<CommentEntity> commentsEntity;

  PersonEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fullName = json['fullName'],
        email = json['email'],
        personalPhone = json['personalPhone'],
        commercialPhone = json['commercialPhone'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'email': email,
        'personalPhone': personalPhone,
        'commercialPhone': commercialPhone,
      };
}
