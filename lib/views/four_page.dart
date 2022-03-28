import 'package:flutter/material.dart';
import 'package:navegacao/controllers/posts_controller.dart';

class FourPage extends StatefulWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation:
                    Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, index) => ListTile(
                          title: Text(_controller.posts.value[index].title),
                        ),
                      ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _controller.callAPI,
                child: const Text('Buscar dados'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
