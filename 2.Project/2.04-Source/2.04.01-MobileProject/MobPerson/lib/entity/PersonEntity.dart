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
import 'package:intl/intl.dart';

// ======================================================================================
// Use the website json to dart to convert: https://javiercbk.github.io/json_to_dart/
// ======================================================================================

class PersonEntity {
  int id;
  String fullName;
  GenderEnum gender;
  String email;
  int personalPhone;
  int commercialPhone;
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
  bool receiveInformation;
  List<CommentEntity> commentsEntity;

  // ************
  // Constructors
  // ************

  PersonEntity({
    id,
    fullName,
    gender,
    email,
    personalPhone,
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
    receiveInformation,
    commentsEntity,
  }) {
    this.id = id;
    this.fullName = fullName;
    this.gender = gender;
    this.email = email;
    this.personalPhone = personalPhone;
    this.commercialPhone = commercialPhone;
    this.cityEntity = cityEntity;
    this.institutionAutonomousEnum = institutionAutonomousEnum;
    this.institutionName = institutionName;
    this.actingAreas = actingAreas;
    this.interestProductsCultures = interestProductsCultures;
    this.interestProductsCultures = interestAreas;
    this.jobRole = jobRole;
    this.cpf = cpf;
    this.mainAddress = mainAddress;
    this.addressComplement = addressComplement;
    this.cep = cep;
    this.farmSizeEnum = farmSizeEnum;
    this.schoolingsEntity = schoolingsEntity;
    this.visitNumberEnum = visitNumberEnum;
    this.dateOfLastVisit = dateOfLastVisit;
    this.receiveInformation = receiveInformation;
    this.commentsEntity = commentsEntity;
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

  // *************************
  // Getter and setter methods
  // *************************

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
    return this.dateOfLastVisit == null
        ? '-'
        : DateFormat('dd/MM/yyyy hh:mm')
            .format(this.dateOfLastVisit)
            .toString();
  }

  String receiveInformationFormatted() {
    return this.receiveInformation != null
        ? this.receiveInformation.toString()
        : "-";
  }

  // List<CommentEntity> commentsEntity;

  // *************************
  // Others methods
  // *************************

  // PersonEntity.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       fullName = json['fullName'],
  //       email = json['email'],
  //       personalPhone = json['personalPhone'],
  //       commercialPhone = json['commercialPhone'];

  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'fullName': fullName,
  //       'email': email,
  //       'personalPhone': personalPhone,
  //       'commercialPhone': commercialPhone,
  //     };

  PersonEntity.fromJsonSqflite(Map<String, dynamic> json)
      : id = json['id'],
        fullName = json['full_name'],
        gender = json['gender'],
        email = json['email'],
        personalPhone = json['personal_phone'],
        commercialPhone = json['commercial_phone'],
        institutionName = json['institution_name'],
        jobRole = json['job_role'],
        cpf = json['cpf'],
        mainAddress = json['main_address'],
        addressComplement = json['address_complement'],
        cep = json['cep'],
        dateOfLastVisit = DateTime.parse(json['date_of_last_visit']);

  Map<String, dynamic> toJsonSqflite() => {
        'id': id,
        'full_name': fullName,
        'email': email,
        'personal_phone': personalPhone,
        'commercial_phone': commercialPhone,
        'institution_name': institutionName,
        'job_role': jobRole,
        'cpf': cpf,
        'main_address': mainAddress,
        'address_complement': addressComplement,
        'cep': cep,
        'date_of_last_visit': dateOfLastVisit.toIso8601String(),
      };
}
