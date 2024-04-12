// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ffi';

class KitmaModel {



String id;
String neah;
String name;
bool isfajeer;
String startDate;
String endDate;
bool isProiratiy;
bool isPrivate;
List<String> ajza;

  KitmaModel({
    required this.id,
    required this.neah,
    required this.name,
    required this.isfajeer,
    required this.startDate,
    required this.endDate,
    required this.isProiratiy,
    required this.isPrivate,
    required this.ajza,
  });








  KitmaModel copyWith({
    String? id,
    String? neah,
    String? name,
    bool? isfajeer,
    String? startDate,
    String? endDate,
    bool? isProiratiy,
    bool? isPrivate,
    List<String>? ajza,
  }) {
    return KitmaModel(
      id: id ?? this.id,
      neah: neah ?? this.neah,
      name: name ?? this.name,
      isfajeer: isfajeer ?? this.isfajeer,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      isProiratiy: isProiratiy ?? this.isProiratiy,
      isPrivate: isPrivate ?? this.isPrivate,
      ajza: ajza ?? this.ajza,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'neah': neah,
      'name': name,
      'isfajeer': isfajeer,
      'startDate': startDate,
      'endDate': endDate,
      'isProiratiy': isProiratiy,
      'isPrivate': isPrivate,
      'ajza': ajza.toString(),
    };
  }

  factory KitmaModel.fromMap(Map<String, dynamic> map) {
    return KitmaModel(
      id: map['id'] as String,
      neah: map['neah'] as String,
      name: map['name'] as String,
      isfajeer: map['isfajeer'] as bool,
      startDate: map['startDate'] as String,
      endDate: map['endDate'] as String,
      isProiratiy: map['isProiratiy'] as bool,
      isPrivate: map['isPrivate'] as bool,
      ajza: List.generate(map['ajza'].length ,(index)=>map['ajza'][index]),
    );
  }

  String toJson() => json.encode(toMap());

  factory KitmaModel.fromJson(String source) => KitmaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'KitmaModel(id: $id, neah: $neah, name: $name, isfajeer: $isfajeer, startDate: $startDate, endDate: $endDate, isProiratiy: $isProiratiy, isPrivate: $isPrivate, ajza: $ajza)';
  }

  @override
  bool operator ==(covariant KitmaModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.neah == neah &&
      other.name == name &&
      other.isfajeer == isfajeer &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.isProiratiy == isProiratiy &&
      other.isPrivate == isPrivate &&
      other.ajza == ajza;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      neah.hashCode ^
      name.hashCode ^
      isfajeer.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      isProiratiy.hashCode ^
      isPrivate.hashCode ^
      ajza.hashCode;
  }
}
