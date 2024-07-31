import 'package:flutter/material.dart';

class types extends StatefulWidget {
  const types({super.key});

  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<types> {
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
                child: Image.network(
                  "https://i.pinimg.com/originals/d5/47/aa/d547aaf9238ced2a4d2b33ffcc17ce63.png",
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
