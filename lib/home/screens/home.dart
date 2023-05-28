import 'package:flutter/material.dart';
import 'package:quiz/home/services/document_service.dart';
import 'package:quiz/home/services/notification_service.dart';
import 'package:quiz/home/services/permission_service.dart';
import 'package:quiz/home/screens/form_create.dart';
import 'package:quiz/home/screens/form_load.dart';
import 'package:quiz/home/screens/about.dart';

class Home extends StatefulWidget {
  Home({super.key});

  /// initial core services
  final DocumentService documentService = DocumentService();
  final PermissionService permissionService = PermissionService();
  final NotificationService notificationService = NotificationService();

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  /// declare basic tab management variables
  late int currentTabIndex = 0;
  late List<Widget> tabs = [
    FormCreateScreen(
      documentService: widget.documentService,
      permissionService: widget.permissionService,
      notificationService: widget.notificationService,
    ),
    FormLoadScreen(
      documentService: widget.documentService,
      permissionService: widget.permissionService,
      notificationService: widget.notificationService,
    ),
    const AboutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: tabs[currentTabIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(13.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Theme.of(context).backgroundColor,
          ),
          child: BottomNavigationBar(
            currentIndex: currentTabIndex,
            items: const [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.file_open_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.account_box_outlined,
                ),
              ),
            ],
            onTap: (index) => setState(
              () => currentTabIndex = index,
            ),
          ),
        ),
      ),
    );
  }
}
