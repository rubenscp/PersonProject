import 'package:MobPerson/entity/FederationUnityEntity.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/entity/cityEntity.dart';
import 'package:MobPerson/enumerate/GenderEnum.dart';

CityEntity GOIANIA = CityEntity(
  id: '001',
  federationUnity: FederationUnityEntity(
    id: '001',
    federationUnityName: 'Goiás',
    federationUnityShortName: 'GO',
  ),
  name: 'Goiânia',
);

final List<PersonEntity> PERSONS_DUMMY0 = [];

final List<PersonEntity> PERSONS_DUMMY1 = [
  PersonEntity(
    id: 1,
    fullName: 'Rubens de Castro Pereira',
    email: 'pessoa01@gmail.com',
    personalPhone: '62984178356',
    gender: GenderEnum.MALE,
    cityEntity: GOIANIA,
    jobRole: 'Analista de Sistemas e Professor',
    mainAddress: 'Rua 122, nr 126, Setor Sul',
    addressComplement: 'Qd.F43A, Lt. 47',
    cep: 74085500,
    cpf: 37047485104,
  ),
];

final List<PersonEntity> PERSONS_DUMMY = [
  PersonEntity(
    id: 1,
    fullName: 'Rubens de Castro Pereira',
    email: 'pessoa01@gmail.com',
    personalPhone: '62984178356',
    gender: GenderEnum.MALE,
    cityEntity: GOIANIA,
    jobRole: 'Analista de Sistemas e Professor',
    mainAddress: 'Rua 122, nr 126, Setor Sul',
    addressComplement: 'Qd.F43A, Lt. 47',
    cep: 74085500,
    cpf: 37047485104,
  ),
  PersonEntity(
    id: 2,
    fullName: 'Margarida da Conceição Leopoldina Andrade',
    email: 'pessoa02@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 3,
    fullName: 'Andrea Aurora Boreal Ártica',
    email: 'pessoa03@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 4,
    fullName: 'Zenilda Marfim Corte Real',
    email: 'pessoa04@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 5,
    fullName: 'Carlos Roberto Silva Xavier',
    email: 'pessoa05@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 6,
    fullName: 'Pessoa 06 com nome completo muito grande ',
    email: 'pessoa06@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 7,
    fullName:
        'Pessoa 07 com nome completo muito muito muito muito muito muito muito muito muito muito muito grande ',
    email: 'pessoa07@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: 8,
    fullName: 'Pessoa 08 com nome completo muito grande ',
    email: 'pessoa08@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 9,
    fullName: 'Pessoa 09 com nome completo muito grande ',
    email: 'pessoa09@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 10,
    fullName: 'Pessoa 10  ',
    email: 'pessoa10@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 11,
    fullName: 'Pessoa 11 com nome completo muito grande ',
    email: 'pessoa11@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 12,
    fullName: 'Pessoa 12 com nome completo grande ',
    email: 'pessoa12@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 13,
    fullName: 'Pessoa 13 com nome completo grande ',
    email: 'pessoa13@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 14,
    fullName: 'Pessoa 14 com nome completo muito grande ',
    email: 'pessoa14@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: 15,
    fullName: 'Pessoa 15 com nome completo muito grande ',
    email: 'pessoa15@gmail.com',
    personalPhone: '62984178356',
  ),
];
