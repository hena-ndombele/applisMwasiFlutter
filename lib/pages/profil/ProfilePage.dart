import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:mwasi_app/utils/ColorPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color selectedItem = ColorPages.COLOR_PRINCIPALE;
  final ImagePicker picker = ImagePicker();
  XFile? imageSelectione;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPages.COLOR_NOIR,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Mon Profil",
            style: TextStyle(
                color: ColorPages.COLOR_PRINCIPALE, fontFamily: "Schyler"),
          ),
          backgroundColor: ColorPages.COLOR_NOIR,
        ),
        body: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: InkWell(
                    onTap: () async {},
                    child: imageSelectione == null
                        ? CircleAvatar(
                            radius: 35.sp,
                            backgroundImage: AssetImage(
                              'images/logo.jpg',
                            ),
                          )
                        : CircleAvatar(
                            radius: 35.sp,
                            backgroundImage:
                                FileImage(File(imageSelectione!.path)),
                          ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Hena Ndombele',
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        color: ColorPages.COLOR_BLANC,
                        fontFamily: 'Schyler'),
                  ),
                ),
                Center(
                  child: Text(
                    'Henandombele2021@gmail.com',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      color: ColorPages.COLOR_GRIS,
                      fontFamily: 'Schyler',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: ColorPages.COLOR_BLANC,
                        fontFamily: 'Schyler'),
                  ),
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: () {},
                  child: const Text('Changer le mot de passe',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: ColorPages.COLOR_BLANC,
                          fontFamily: 'Schyler')),
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: () => contactThankfulPerson(),
                  child: const Text('Contactez le développeur',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: ColorPages.COLOR_BLANC,
                          fontFamily: 'Schyler')),
                ),
              ],
            ),
          );
        }));
  }

  Future contactThankfulPerson() async {
    showModalBottomSheet<String?>(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      builder: (context) {
        return Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset('images/wat.jpeg', width: 30),
                    title: Text('Whastapp'),
                    onTap: () =>
                        launchUrl(Uri.parse('https://wa.me/+243830376004')),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'images/link.png',
                      width: 30,
                    ),
                    title: Text('Linkedin'),
                    onTap: () => launchUrl(
                        Uri.parse('https://www.linkedin.com/in/hena-ndombele')),
                  ),
                  ListTile(
                    leading: Image.asset('images/mail.png', width: 30),
                    title: Text('Email'),
                    onTap: () => launch(
                      'mailto:henandombele2021@gmail.com',
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
