import 'package:flutter/material.dart'; 
import 'package:opennutritracker/core/data/dbo/user_gender_dbo.dart';
import 'package:opennutritracker/generated/l10n.dart';

enum UserGenderEntity {
  male,
  female,
  nonbinary,
  transgenderFemale,
  transgenderMale;

  factory UserGenderEntity.fromUserGenderDBO(UserGenderDBO genderDBO) {
    UserGenderEntity genderEntity;
    switch (genderDBO) {
      case UserGenderDBO.male:
        genderEntity = UserGenderEntity.male;
        break;
      case UserGenderDBO.female:
        genderEntity = UserGenderEntity.female;
        break;
      case UserGenderDBO.nonbinary:
        genderEntity = UserGenderEntity.nonbinary;
        break;
      case UserGenderDBO.transgenderFemale:
        genderEntity = UserGenderEntity.transgenderFemale;
        break;
      case UserGenderDBO.transgenderMale:
        genderEntity = UserGenderEntity.transgenderMale;
        break;
    }
    return genderEntity;
  }

  String getName(BuildContext context) {
    String name;
    switch (this) {
      case UserGenderEntity.male:
        name = S.of(context).genderMaleLabel;
        break;
      case UserGenderEntity.female:
        name = S.of(context).genderFemaleLabel;
        break;
      case UserGenderEntity.nonbinary:
        name = S.of(context).genderNonbinaryLabel;
        break;
      case UserGenderEntity.transgenderFemale:
        name = S.of(context).genderTransFemaleLabel;
        break;
      case UserGenderEntity.transgenderMale:
        name = S.of(context).genderTransMaleLabel;
        break;
    }
    return name;
  }

  IconData getIcon() {
    IconData icon;
    switch (this) {
      case UserGenderEntity.male:
        icon = Icons.male_outlined;
        break;
      case UserGenderEntity.female:
        icon = Icons.female_outlined;
        break;
      case UserGenderEntity.nonbinary:
        icon = Icons.nonbinary_outlined;
        break;
      case UserGenderEntity.transgenderFemale:
        icon = Icons.transgenderFemale_outlined;
        break;
      case UserGenderEntity.transgenderMale:
        icon = Icons.transgenderMale_outlined;
        break;
    }
    return icon;
  }
}
