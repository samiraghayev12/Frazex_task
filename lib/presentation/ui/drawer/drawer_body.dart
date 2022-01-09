import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:frazex_task/presentation/ui/drawer/setting/view/settings_page.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(CupertinoIcons.clear),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage())),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Icon(Icons.settings_outlined),
                          SizedBox(width: 8),
                          Chip(
                            label: Text(
                              "settings".tr(),
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    );
                  }))),
        ],
      ),
    );
  }
}
