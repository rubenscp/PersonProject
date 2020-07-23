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
  List<CommentEntity> commentsEntity;

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
    this.commentsEntity,
  });

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
    return this.farmSize != null ? this.farmSize.toString() : "-";
  }

  // List<SchoolingEntity> schoolingEntity;

  String visitNumberFormatted() {
    return this.visitNumber != null ? this.visitNumber : "-";
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
}
