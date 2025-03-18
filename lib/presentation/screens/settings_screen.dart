import 'package:flutter/material.dart';
import 'package:module_b_101/presentation/screens/main_screen.dart';
import 'package:module_b_101/presentation/widgets/custom_setting_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '설정',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 300, bottom: 20),
              child: Text(
                '설정 및 기타',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(),
            ),
            CustomSettingButton(settingIndex: 1,),
            CustomSettingButton(settingIndex: 2,),
            CustomSettingButton(settingIndex: 3,),
            CustomSettingButton(settingIndex: 4,),
            CustomSettingButton(settingIndex: 5,),
            CustomSettingButton(settingIndex: 6,),
            CustomSettingButton(settingIndex: 7,),
            CustomSettingButton(settingIndex: 8,),
          ],
        ),
      ),
    );
  }
}
