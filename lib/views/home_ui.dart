import 'dart:async';

import 'package:fast_app/mode.l/model.dart';
import 'package:fast_app/views/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<FastList> FastListInfo = [
    FastList(
      name: 'สายด่วน 1669',
      mobile: '1669',
      image: '',

    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 68, 68),
        title: Center(
          child: Text(
            'FAST...',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/cross.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                  );
                },
               itemCount: FastListInfo.length,
               itemBuilder: (context,index){
                return ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetialUI(
                          name : FastListInfo[index].name!,
                          mobile: FastListInfo[index].mobile!,
                          image: FastListInfo[index].image!,
                        ),
                      ),
                    );
                  },
                  leading: Image.asset(
                    'asstest/images/' + FastListInfo[index].image!,
                  ),
                  title: Text(
                    FastListInfo[index].name!,
                  ),
                  subtitle: Text(
                    FastListInfo[index].mobile!,
                  ),
                  trailing: Icon(
                    Icon.
                    color: Colors.red,
                  ),
                );
               }

              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
