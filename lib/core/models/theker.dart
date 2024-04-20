// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class thekerModel {

// String name;
// String proof;
// int num;
// String id;
//   thekerModel({
//     required this.name,
//     required this.proof,
//     required this.num,
//     required this.id,
//   });


//   thekerModel copyWith({
//     String? name,
//     String? proof,
//     int? num,
//     String? id,
//   }) {
//     return thekerModel(
//       name: name ?? this.name,
//       proof: proof ?? this.proof,
//       num: num ?? this.num,
//       id: id ?? this.id,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'proof': proof,
//       'num': num,
//       'id': id,
//     };
//   }

//   factory thekerModel.fromMap(Map<String, dynamic> map) {
//     return thekerModel(
//       name: map['name'] as String,
//       proof: map['proof'] as String,
//       num: map['num'] as int,
//       id: map['id'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory thekerModel.fromJson(String source) => thekerModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'thekerModel(name: $name, proof: $proof, num: $num, id: $id)';
//   }

//   @override
//   bool operator ==(covariant thekerModel other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.name == name &&
//       other.proof == proof &&
//       other.num == num &&
//       other.id == id;
//   }

//   @override
//   int get hashCode {
//     return name.hashCode ^
//       proof.hashCode ^
//       num.hashCode ^
//       id.hashCode;
//   }
// }
