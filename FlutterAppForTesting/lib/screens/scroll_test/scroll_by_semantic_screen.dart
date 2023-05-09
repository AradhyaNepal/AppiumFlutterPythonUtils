import 'package:flutter/material.dart';

class ScrollBySemanticScreen extends StatefulWidget {
  static const route = "/ScrollBySemanticScreen";
  static const heading = "Scroll By Semantic Screen";

  const ScrollBySemanticScreen({Key? key}) : super(key: key);

  @override
  State<ScrollBySemanticScreen> createState() => _ScrollBySemanticScreenState();
}

class _ScrollBySemanticScreenState extends State<ScrollBySemanticScreen> {
  bool vertical = true;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              key: const ValueKey("axis_swift"),
              onPressed: () {
                vertical = !vertical;
                setState(() {});
              },
              icon: const Icon(
                Icons.swipe,
              ),
            ),
          ],
        ),
        body: Semantics(
          label: "SingleChildScrollView",
          child: SingleChildScrollView(
            scrollDirection: vertical ? Axis.vertical : Axis.horizontal,
            child: vertical
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Start",
                        textAlign: TextAlign.center,
                        key: ValueKey("start_key"),
                      ),
                      SizedBox(
                        height: size.height * 2,
                      ),
                      const Text(
                        "Mid",
                        textAlign: TextAlign.center,
                        key: ValueKey("mid_key"),
                      ),
                      SizedBox(
                        height: size.height * 2,
                      ),
                      const Text(
                        "End",
                        textAlign: TextAlign.center,
                        key: ValueKey("end_key"),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Start",
                          key: ValueKey("start_key"),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 2,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Mid",
                          textAlign: TextAlign.center,
                          key: ValueKey("mid_key"),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 2,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "End",
                          textAlign: TextAlign.center,
                          key: ValueKey("end_key"),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}