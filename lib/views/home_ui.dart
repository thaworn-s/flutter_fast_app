import 'package:fast_app/mode.l/fast_list.dart';
import 'package:fast_app/views/detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<FastList> FastListInfo = [
    FastList(
      name: "สายด่วน 1669",
      mobile: "1660",
      image: 'fast1.png',
    ),
    FastList(
      name: "เหตุเพลิงไหม้",
      mobile: "1660",
      image: 'fast2.png',
    ),
    FastList(
      name: "แจ้งตำรวจ",
      mobile: "191",
      image: 'fast3.png',
    ),
    FastList(
      name: "สายด่วน 1669",
      mobile: "1660",
      image: 'fast4.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
          child: Text(
            'FAST',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/cross.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, Index) {
                  return Divider();
                },
                itemCount: FastListInfo.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetialUI(
                            name: FastListInfo[Index].name!,
                            mobile: FastListInfo[Index].mobile!,
                            image: FastListInfo[Index].image!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'images/' + FastListInfo[Index].image!,
                    ),
                    title: Text(
                      FastListInfo[Index].name!,
                    ),
                    subtitle: Text(
                      FastListInfo[Index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
