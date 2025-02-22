// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gender_dbo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserGenderDBOAdapter extends TypeAdapter<UserGenderDBO> {
  @override
  final int typeId = 6;

  @override
  UserGenderDBO read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserGenderDBO.male;
      case 1:
        return UserGenderDBO.female;
      case 2:
        return UserGenderDBO.nonbinary;
      case 3:
        return UserGenderDBO.transgenderFemale;
      case 4:
        return UserGenderDBO.transgenderMale;
      default:
        return UserGenderDBO.male;
    }
  }

  @override
  void write(BinaryWriter writer, UserGenderDBO obj) {
    switch (obj) {
      case UserGenderDBO.male:
        writer.writeByte(0);
        break;
      case UserGenderDBO.female:
        writer.writeByte(1);
        break;
      case UserGenderDBO.nonbinary:
        writer.writeByte(2);
        break;
      case UserGenderDBO.transgenderFemale:
        writer.writeByte(3);
        break;
      case UserGenderDBO.transgenderMale:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserGenderDBOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
