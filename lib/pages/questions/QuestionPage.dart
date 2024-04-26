import 'package:flutter/material.dart';
import 'package:mwasi_app/utils/ColorPage.dart';
import 'package:mwasi_app/widgets/BoutonWidget.dart';
import 'package:mwasi_app/widgets/ChampSaisieWidget.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  TextEditingController _question1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorPages.COLOR_PRINCIPALE,
        title: Text(
          "Questions (15)",
          style: TextStyle(color: ColorPages.COLOR_BLANC),
        ),
      ),
      backgroundColor: ColorPages.COLOR_NOIR,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ChampSaisieWidget(
                label: "Quel est votre occupation?",
                hintext: "Quel est votre occupation?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "vous êtes dans quelle ville?",
                hintext: "vous êtes dans quelle ville?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "C'est quoi les menstruations selon vous?",
                hintext: "C'est quoi les menstruations selon vous?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Êtes vous fière d'avoir vos menstrues?",
                hintext: "Êtes vous fière d'avoir vos menstrues?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Pourquoi ça n'arrive qu'aux fille?",
                hintext: "Pourquoi ça n'arrive qu'aux fille?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Comment vous sentez vous pendant vos menstrues?",
                hintext: "Comment vous sentez vous pendant vos menstrues?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Avez-vous accès aux serviettes hygiènique?",
                hintext: "Avez-vous accès aux serviettes hygiènique?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Comment accédez vous à ces serviettes?",
                hintext: "Comment accédez vous à ces serviettes?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Quel type de serviettes hygiénique préférez vous?",
                hintext: "Quel type de serviettes hygiénique préférez vous?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label:
                    "Quel genrez de soucis rencontrez vous lorsque vous porter vos serviettes?",
                hintext:
                    "Quel genrez de soucis rencontrez vous lorsque vous porter vos serviettes?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label:
                    "Quel genrez de soucis rencontrez vous lorsque vous changez une serviette pleine?",
                hintext:
                    "Quel genrez de soucis rencontrez vous lorsque vous changez une serviette pleine?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Combien de serviettes changez vous par jour?",
                hintext: "Combien de serviettes changez vous par jour?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label:
                    "Que devienent les serviettes hygiénique après utilisation?",
                hintext:
                    "Que devienent les serviettes hygiénique après utilisation?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Qu'est ce que les règles vous empèche de faire?",
                hintext: "Qu'est ce que les règles vous empèche de faire?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ChampSaisieWidget(
                label: "Comment s'est passé vos premiers règles?",
                hintext: "Comment s'est passé vos premiers règles?",
                prefixIcon: Icons.question_answer,
                ctrl: _question1,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Repondez à cette question";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              BoutonWidget(text: "Envoyer", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
