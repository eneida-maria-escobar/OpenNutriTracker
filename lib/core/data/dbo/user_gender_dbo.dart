import 'package:hive/hive.dart';
import 'package:opennutritracker/core/domain/entity/user_gender_entity.dart';

part 'user_gender_dbo.g.dart';

@HiveType(typeId: 6)
enum UserGenderDBO {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
  @HiveField(2)
  nonbinary,
  @HiveField(3)
  transgenderFemale,
  @HiveField(4)
  transgenderMale;



  factory UserGenderDBO.fromUserGenderEntity(UserGenderEntity genderEntity) {
    UserGenderDBO gender;
    switch (genderEntity) {
      case UserGenderEntity.male:
        gender = UserGenderDBO.male;
        break;
      case UserGenderEntity.female:
        gender = UserGenderDBO.female;
        break;
      
      case UserGenderDBO.nonbinary:
        gender = UserGenderDBO.nonbinary;
        break;
      case UserGenderDBO.transgenderFemale:
        gender = UserGenderDBO.transgenderFemale;
        break;
      case UserGenderDBO.transgenderMale:
        gender = UserGenderDBO.transgenderMale;
        break;
    
    }
    return gender;
  }
}
