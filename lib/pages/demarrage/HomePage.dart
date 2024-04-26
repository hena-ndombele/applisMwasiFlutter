import 'package:flutter/material.dart';
import 'package:mwasi_app/utils/ColorPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_NOIR,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'images/logo.jpg',
              width: 60,
            ),
            Text(
              "Mwasi",
              style: TextStyle(color: ColorPages.COLOR_PRINCIPALE),
            )
          ],
        ),
      ),
      backgroundColor: ColorPages.COLOR_NOIR,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(20),
                child: Text("C'est quoi MWASI?",style: TextStyle(color: ColorPages.COLOR_PRINCIPALE,fontSize: 19,fontWeight: FontWeight.bold),)
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Text("MWASI est un kit de protection hygiénique réutilisables fais en tissus ultra absorbant.\n Le kit est composé de 8 serviettes hygiéniques et d'un petit sac étanche pour le rechange des bandes, un déplient indiquant le mode d'usage.",style: TextStyle(color: ColorPages.COLOR_BLANC,fontSize: 13,fontWeight: FontWeight.bold),)
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Text("La femme d'aujourd'hui doit comprendre que ces périodes de menstrues ne peuvent pas devenir une source de pollution pour l'environnement. Elle doit assumer sa féminité et nettoyer ces bandes hygiénique plutôt que les jeter à la poubelle parce que ce sont des dechets qu'on peux eviter. Ainsi, toute femme qui utilise mon produit est: \n \n"
                    "1. Propre parce qu'elle prends le temps de nettoyer ces couches\n"
                    "2. Responsable parce qu'elle gère elle même ces déchets en toute discretion \n "
                    "3. En bonne santé parce que nos serviettes sont antibactériennes, antifongique.",style: TextStyle(color: ColorPages.COLOR_BLANC,fontSize: 13,fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }
}
