import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/ColorPage.dart';
import '../../utils/Routes.dart';
import '../../widgets/BoutonWidget.dart';
import '../../widgets/ChampSaisieWidget.dart';



class CreationComptePage extends StatefulWidget {
  const CreationComptePage({super.key});

  @override
  State<CreationComptePage> createState() => _CreationComptePageState();
}

class _CreationComptePageState extends State<CreationComptePage> {

  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _username=TextEditingController();
  TextEditingController _telephone=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_NOIR,
      body: Stack(
        children: [_body(context)],
      ),
    );
  }

  Widget _body(BuildContext context){
    return Form(
      child: SingleChildScrollView(
        child:Center(
            child:Container(
                child:Column(
                    children:[
                      SizedBox(height: 5.h,),
                      _logo(),

                      _form(),
                      SizedBox(height: 1.h,),
                      _bouton_connexion(),
                      SizedBox(height: 1.5.h,),
                      _compte_text()
                    ]))  ),
      ),
    );
  }

  Widget _logo(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[ Image.asset("images/logo.jpg",width: Adaptive.w(50),),
        ]);
  }

  Widget _form(){
    return Container(
      margin: EdgeInsets.all(20.sp),
      child: Column(
        children: [

          ChampSaisieWidget(
            prefixIcon: Icons.person,
            ctrl: _username,
            validator: (String? value) {

              if ( value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },label: "nom d'utilisateur", hintext: "nom d'utilisateur ",),
          SizedBox(height: 3.h,),

          ChampSaisieWidget(
            prefixIcon: Icons.email,
            ctrl: _email,
            validator: (String? value) {

              if ( value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },label: 'email', hintext: 'email', ) ,
          SizedBox(height: 3.h,),
          ChampSaisieWidget(
            prefixIcon: Icons.phone,
            ctrl: _telephone,
            type: TextInputType.phone,
            validator: (String? value) {

              if ( value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },label: 'Télephone', hintext: 'Téléphone',),
          SizedBox(height: 3.h,),
          ChampSaisieWidget(
            prefixIcon: Icons.lock,
            ctrl: _password,
            validator: (String? value) {

              if ( value == null || value.isEmpty) {
                return "Champs obligatoire*";
              }
              return null;
            },label: 'passwword', hintext: 'password',)
        ],
      ),
    );
  }

  Widget _bouton_connexion(){
    return Container(
      child: BoutonWidget(text: "Créer mon compte", onPressed: (){}),
    );
  }

  Widget _compte_text(){
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Vous avez déjà un compte?",style: TextStyle(color:ColorPages.COLOR_BLANC),),
            GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, Routes.AuthentificationPage);
                },
                child: Text("Se connecter",style: TextStyle(color:ColorPages.COLOR_PRINCIPALE,decoration: TextDecoration.underline,decorationColor:ColorPages.COLOR_PRINCIPALE,),))
          ],
        ),
      ),
    );
  }
}
