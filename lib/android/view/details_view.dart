import 'package:contactapp/android/utils/styles.dart';
import 'package:contactapp/android/view/editor_contact_view.dart';
import 'package:contactapp/models/contact_model.dart';
import 'package:flutter/material.dart';

import 'address_view.dart';

class DetailsView extends StatelessWidget {

  DetailsView({ Key? key }) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Contato"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(200),
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    image:
                        NetworkImage("https://pbs.twimg.com/profile_images/577097129866334208/-A-gox0c_400x400.jpeg"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Carlos Alberto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "21 999999-2222",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "caneto@gmail.com",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 5,
                            color: Colors.white,
                          ),
                        ],
                        color: Colors.lightBlue),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 5,
                            color: Colors.white,
                          ),
                        ],
                        color: Colors.lightBlue),
                    child: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 5,
                            color: Colors.white,
                          ),
                        ],
                        color: Colors.lightBlue),
                    child: const Icon(
                      Icons.camera_enhance,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ListTile(
              title: const Text(
                "Endereço",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Rua do Desenvolvedor, 256",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Piedade/RJ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
              trailing: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddressView(),
                    ),
                  );
                },
                child: Icon(
                  Icons.pin_drop,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditorContactView(
                  model: ContactModel(
                    id: "1",
                    name: "Carlos Alberto",
                    email: "caneto@gmail.com",
                    phone: "21 99999-2222",
                  ),
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      );
    }
    
  
}