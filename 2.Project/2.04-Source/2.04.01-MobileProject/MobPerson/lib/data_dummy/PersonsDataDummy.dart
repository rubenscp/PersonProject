import 'package:MobPerson/entity/FederationUnityEntity.dart';
import 'package:MobPerson/entity/PersonEntity.dart';
import 'package:MobPerson/entity/CityEntity.dart';
import 'package:MobPerson/enumerate/GenderEnum.dart';

final CityEntity GOIANIA = CityEntity(
  id: '001',
  federationUnity: FederationUnityEntity(
    id: '001',
    federationUnityName: 'Goiás',
    federationUnityShortName: 'GO',
  ),
  name: 'Goiânia',
);

final List<PersonEntity> PERSONS_DUMMY2 = [];
final List<PersonEntity> PERSONS_DUMMY = [
  PersonEntity(
    id: '0001',
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
    id: '0002',
    fullName: 'Margarida da Conceição Leopoldina Andrade',
    email: 'pessoa02@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0003',
    fullName: 'Andrea Aurora Boreal Ártica',
    email: 'pessoa03@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0004',
    fullName: 'Zenilda Marfim Corte Real',
    email: 'pessoa04@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0005',
    fullName: 'Carlos Roberto Silva Xavier',
    email: 'pessoa05@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0006',
    fullName: 'Pessoa 06 com nome completo muito grande ',
    email: 'pessoa06@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0007',
    fullName:
        'Pessoa 07 com nome completo muito muito muito muito muito muito muito muito muito muito muito grande ',
    email: 'pessoa07@gmail.com',
    personalPhone: '62984178356',
    cityEntity: GOIANIA,
  ),
  PersonEntity(
    id: '0008',
    fullName: 'Pessoa 08 com nome completo muito grande ',
    email: 'pessoa08@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0009',
    fullName: 'Pessoa 09 com nome completo muito grande ',
    email: 'pessoa09@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0010',
    fullName: 'Pessoa 10  ',
    email: 'pessoa10@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0011',
    fullName: 'Pessoa 11 com nome completo muito grande ',
    email: 'pessoa11@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0012',
    fullName: 'Pessoa 12 com nome completo grande ',
    email: 'pessoa12@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0013',
    fullName: 'Pessoa 13 com nome completo grande ',
    email: 'pessoa13@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0014',
    fullName: 'Pessoa 14 com nome completo muito grande ',
    email: 'pessoa14@gmail.com',
    personalPhone: '62984178356',
  ),
  PersonEntity(
    id: '0015',
    fullName: 'Pessoa 15 com nome completo muito grande ',
    email: 'pessoa15@gmail.com',
    personalPhone: '62984178356',
  ),
];
