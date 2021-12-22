class ExhibitModel {
  final int id;
  final String pr_name;
  final String pro_name;
  final String pro_shortdescription;
  final String pro_size;
  final double pro_weight;
  final String pro_color;
  final String pro_status;
  final String pro_material;
  final String pro_source;
  final String pro_detail;
  final String pro_image;

  ExhibitModel({
    required this.id,
    required this.pr_name,
    required this.pro_name,
    required this.pro_shortdescription,
    required this.pro_size,
    required this.pro_weight,
    required this.pro_color,
    required this.pro_status,
    required this.pro_material,
    required this.pro_source,
    required this.pro_detail,
    required this.pro_image,
  });

  factory ExhibitModel.fromJson(Map<String, dynamic> json) {
    return ExhibitModel(
      id: json['id'],
      pr_name: json['pr_name'],
      pro_name: json['pro_name'],
      pro_shortdescription: json['pro_shortdescription'],
      pro_size: json['pro_size'],
      pro_weight: double.parse(
          json['pro_weight'] == null ? '0' : json['pro_weight'].toString()),
      pro_color: json['pro_color'],
      pro_status: json['pro_status'],
      pro_material: json['ca_name'],
      pro_source: json['pro_source'],
      pro_detail: json['pro_detail'],
      pro_image: json['pro_image'],
    );
  }
}
