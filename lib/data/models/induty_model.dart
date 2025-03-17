class IndutyModel {
  final String ic;
  final String indutyNm;

  IndutyModel({
    required this.ic,
    required this.indutyNm,
  });

  factory IndutyModel.fromJson(Map<String, dynamic> json) {
    return IndutyModel(
      ic: json['ic'],
      indutyNm: json['indutyNm'],
    );
  }
}
