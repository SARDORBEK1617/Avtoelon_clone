
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  final String label;
  final String image;
  final String info;
  final String title;
  final String about;

  const Second(
      {Key? key,
      required this.label,
      required this.image,
      required this.info,
      required this.title,
      required this.about})
      : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, '/Firstpage');
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, height: 2),
                  ),
                  const Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                  widget.image),
              Text(
                widget.info,
                style: const TextStyle(fontSize: 14),
              ),
              const Divider(
                thickness: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Shahar",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("Kuzov",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("Uzatish qutisi",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("Rangi",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("Uzatma",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("Kami bor",
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text(
                        "Двигатель",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 4,
              ),
              Column(
                children: [
                  Text(widget.about),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: const Text("Yozish"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.lightGreen,
                    child: const Text("Xarid qilish"),
                    onPressed: () {
                      showMyDialog();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future showMyDialog(){
    return showDialog(
       context: context,
    builder: (BuildContext context,)=>AlertDialog(
        title: const Text("Xarid qilish:"),
        content: Text(
            widget.label,style: TextStyle(color: Colors.red,fontSize: 22),),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context,"no");
          }, child: const Text("No")),
          TextButton(onPressed: (){
            Navigator.pop(context,"ok");
          }, child: const Text("Okay")),
        ],
      )
    );
  }
}
