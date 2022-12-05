import 'package:contactapp/models/contact_model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel? model;

  const EditorContactView({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle:
                model == null ? const Text("Novo Contato") : const Text("Editar Contato"),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: <Widget>[
                    CupertinoTextField(
                      placeholder: model?.name ?? "Nome",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: model?.phone ?? "Telefone",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: model?.email ?? "E-mail",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton.filled(
                        onPressed: () {},
                        child: const Text(
                          "Salvar",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
