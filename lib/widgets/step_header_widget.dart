import 'package:flutter/material.dart';

class StepHeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const StepHeaderWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 720
              ? MediaQuery.sizeOf(context).width * 0.05
              : MediaQuery.sizeOf(context).width * 0.1),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff5A2684),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Icon(
                icon,
                color: const Color(0xffFDDA23),
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.75,
                  child: Text(
                    subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
