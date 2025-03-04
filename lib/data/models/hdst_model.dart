import 'dart:ffi';

class HdstModel {
  final int hdstId;
  final String hdstNm;
  final String repesntFileNm;
  final String hdstInduty;
  final String appnYear;
  final String opbizDe;
  final String bsnTime;
  final String cttPc;
  final String adres;
  final String hmPg;
  final String? ctprvnCd;
  final String? signguCd;
  final String dc;
  final String parkngPosblYn;
  final String resvePosblYn;
  final String cardPosblYn;
  final String packngPosblYn;
  final String dspsnCnvncYn;

  HdstModel(
      {required this.hdstId,
      required this.hdstNm,
      required this.repesntFileNm,
      required this.hdstInduty,
      required this.appnYear,
      required this.opbizDe,
      required this.bsnTime,
      required this.cttPc,
      required this.adres,
      required this.hmPg,
      required this.ctprvnCd,
      required this.signguCd,
      required this.dc,
      required this.parkngPosblYn,
      required this.resvePosblYn,
      required this.cardPosblYn,
      required this.packngPosblYn,
      required this.dspsnCnvncYn});

  factory HdstModel.fromJson(Map<String, dynamic> json) {
    return HdstModel(
      hdstId: json['hdstId'],
      hdstNm: json['hdstNm'],
      repesntFileNm: json['repesntFileNm'] ?? '',
      hdstInduty: json['hdstInduty'],
      appnYear: json['appnYear'],
      opbizDe: json['opbizDe'],
      bsnTime: json['bsnTime'],
      cttPc: json['cttPc'],
      adres: json['adres'],
      hmPg: json['hmPg'],
      ctprvnCd: json['ctprvnCd'],
      signguCd: json['signguCd'],
      dc: json['dc'],
      parkngPosblYn: json['parkngPosblYn'],
      resvePosblYn: json['resvePosblYn'],
      cardPosblYn: json['cardPosblYn'],
      packngPosblYn: json['packngPosblYn'],
      dspsnCnvncYn: json['dspsnCnvncYn'],
    );
  }
}
