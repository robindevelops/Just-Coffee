import 'package:flutter/material.dart';

class guide extends StatefulWidget {
  const guide({super.key});

  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<guide> {
  TransformationController _transformationController =
      TransformationController();

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: InteractiveViewer(
                transformationController: _transformationController,
                minScale: 1.0,
                maxScale: 13.0,
                onInteractionEnd: (details) {
                  _transformationController.value = Matrix4.identity();
                },
                child: Image.asset(
                  "lib/images/2.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
