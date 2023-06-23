import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_face_detection/camera_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Face Detector'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: SizedBox(
        width: 350,
        height: 80,
        child: OutlinedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(color: Colors.blue, width: 1.0, style: BorderStyle.solid),
            ),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CameraView(
                initialDirection: CameraLensDirection.front,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Capture Face',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
