// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ThekerModelll {

String id;
String Date;
num Fullnum;
num achievment;
String proof;
String name;
  ThekerModelll({
    required this.id,
    required this.Date,
    required this.Fullnum,
    required this.achievment,
    required this.proof,
    required this.name,
  });



  ThekerModelll copyWith({
    String? id,
    String? Date,
    num? Fullnum,
    num? achievment,
    String? proof,
    String? name,
  }) {
    return ThekerModelll(
      id: id ?? this.id,
      Date: Date ?? this.Date,
      Fullnum: Fullnum ?? this.Fullnum,
      achievment: achievment ?? this.achievment,
      proof: proof ?? this.proof,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Date': Date,
      'Fullnum': Fullnum,
      'achievment': achievment,
      'proof': proof,
      'name': name,
    };
  }

  factory ThekerModelll.fromMap(Map<String, dynamic> map) {
    return ThekerModelll(
      id: map['id'] as String,
      Date: map['Date'] as String,
      Fullnum: map['Fullnum'] as num,
      achievment: map['achievment'] as num,
      proof: map['proof'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThekerModelll.fromJson(String source) => ThekerModelll.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ThekerModelll(id: $id, Date: $Date, Fullnum: $Fullnum, achievment: $achievment, proof: $proof, name: $name)';
  }

  @override
  bool operator ==(covariant ThekerModelll other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.Date == Date &&
      other.Fullnum == Fullnum &&
      other.achievment == achievment &&
      other.proof == proof &&
      other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      Date.hashCode ^
      Fullnum.hashCode ^
      achievment.hashCode ^
      proof.hashCode ^
      name.hashCode;
  }
}
