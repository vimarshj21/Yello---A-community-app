import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateCommunityScreen extends ConsumerStatefulWidget {
  const CreateCommunityScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends ConsumerState<CreateCommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a community'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Text('Community name')),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'y/community_name',
                filled: true,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(18),
              ),
              maxLength: 21,
            )
          ],
        ),
      ),
    );
  }
}
