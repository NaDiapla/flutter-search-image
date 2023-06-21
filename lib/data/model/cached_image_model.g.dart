// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_image_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedImageModelAdapter extends TypeAdapter<CachedImageModel> {
  @override
  final int typeId = 0;

  @override
  CachedImageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedImageModel(
      siteName: fields[0] as String,
      thumbnailUrl: fields[1] as String,
      imageUrl: fields[2] as String,
      datetime: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CachedImageModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.siteName)
      ..writeByte(1)
      ..write(obj.thumbnailUrl)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.datetime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedImageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
