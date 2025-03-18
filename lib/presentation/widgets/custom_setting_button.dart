import 'package:flutter/material.dart';

class CustomSettingButton extends StatelessWidget {
  final int settingIndex;
  final List<String> settingName = [
    '사용자 정보',
    '앱 초기화',
    '개인정보 수집 및 이용',
    '이용약관 동의',
    '오픈소스 활용 안내',
    '백년가게 홈페이지',
    '소상공인시장진흥공단 홈페이지',
    '중소벤처 24 홈페이지',
    'K-스타트업 홈페이지',
    '중소기업현왕정보시스템'
  ];

  CustomSettingButton({
    super.key,
    required this.settingIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                settingName[settingIndex],
                style: TextStyle(color: Colors.grey.shade500),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(),
        )
      ],
    );
  }
}
