import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/animation.dart';

void main() {
  group('Animation Extension Tests', () {
    testWidgets('animatedContainer test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').animatedContainer(
            width: 100,
            height: 100,
            color: Colors.blue,
            duration: Duration(milliseconds: 500),
          ),
        ),
      );

      final animatedContainerFinder = find.byType(AnimatedContainer);
      expect(animatedContainerFinder, findsOneWidget);

      final container =
          tester.widget<AnimatedContainer>(animatedContainerFinder);
      expect(container.duration, const Duration(milliseconds: 500));
      expect(container.constraints?.maxWidth, 100);
      expect(container.constraints?.maxHeight, 100);
      expect((container.decoration as BoxDecoration?)?.color, Colors.blue);
    });

    testWidgets('animatedOpacity test', (WidgetTester tester) async {
      // 创建一个状态控制器
      final ValueNotifier<double> opacity = ValueNotifier(1.0);

      await tester.pumpWidget(
        MaterialApp(
          home: ValueListenableBuilder<double>(
            valueListenable: opacity,
            builder: (context, value, child) {
              return Text('Test').animatedOpacity(
                opacity: value,
                duration: const Duration(milliseconds: 200),
              );
            },
          ),
        ),
      );

      // 验证初始状态
      final animatedOpacityFinder = find.byType(AnimatedOpacity);
      expect(animatedOpacityFinder, findsOneWidget);

      var widget = tester.widget<AnimatedOpacity>(animatedOpacityFinder);
      expect(widget.opacity, 1.0);
      expect(widget.duration, const Duration(milliseconds: 200));

      // 改变透明度
      opacity.value = 0.5;
      await tester.pump();

      // 验证动画开始状态
      widget = tester.widget<AnimatedOpacity>(animatedOpacityFinder);
      expect(widget.opacity, 0.5);

      // 等待动画进行中
      await tester.pump(const Duration(milliseconds: 100));

      // 验证动画结束状态
      await tester.pump(const Duration(milliseconds: 100));
      widget = tester.widget<AnimatedOpacity>(animatedOpacityFinder);
      expect(widget.opacity, 0.5);
    });

    testWidgets('animatedPositioned test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Stack(
            children: [
              const Text('Test').animatedPositioned(
                left: 10,
                top: 20,
                duration: Duration(milliseconds: 300),
              ),
            ],
          ),
        ),
      );

      final animatedPositionedFinder = find.byType(AnimatedPositioned);
      expect(animatedPositionedFinder, findsOneWidget);

      final positioned =
          tester.widget<AnimatedPositioned>(animatedPositionedFinder);
      expect(positioned.left, 10);
      expect(positioned.top, 20);
      expect(positioned.duration, const Duration(milliseconds: 300));
    });

    testWidgets('animatedScale test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').animatedScale(
            scale: 2.0,
            alignment: Alignment.topLeft,
            duration: Duration(milliseconds: 400),
          ),
        ),
      );

      final animatedScaleFinder = find.byType(AnimatedScale);
      expect(animatedScaleFinder, findsOneWidget);

      final scale = tester.widget<AnimatedScale>(animatedScaleFinder);
      expect(scale.scale, 2.0);
      expect(scale.alignment, Alignment.topLeft);
      expect(scale.duration, const Duration(milliseconds: 400));
    });

    testWidgets('animatedSlide test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').animatedSlide(
            offset: Offset(1.0, 0.0),
            duration: Duration(milliseconds: 400),
          ),
        ),
      );

      final animatedSlideFinder = find.byType(AnimatedSlide);
      expect(animatedSlideFinder, findsOneWidget);

      final slide = tester.widget<AnimatedSlide>(animatedSlideFinder);
      expect(slide.offset, const Offset(1.0, 0.0));
      expect(slide.duration, const Duration(milliseconds: 400));
    });

    testWidgets('animatedRotation test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').animatedRotation(
            turns: 0.5,
            duration: Duration(milliseconds: 400),
          ),
        ),
      );

      final animatedRotationFinder = find.byType(AnimatedRotation);
      expect(animatedRotationFinder, findsOneWidget);

      final rotation = tester.widget<AnimatedRotation>(animatedRotationFinder);
      expect(rotation.turns, 0.5);
      expect(rotation.duration, const Duration(milliseconds: 400));
    });

    testWidgets('animatedSize test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').animatedSize(
            duration: Duration(milliseconds: 400),
            alignment: Alignment.topLeft,
          ),
        ),
      );

      final animatedSizeFinder = find.byType(AnimatedSize);
      expect(animatedSizeFinder, findsOneWidget);

      final size = tester.widget<AnimatedSize>(animatedSizeFinder);
      expect(size.duration, const Duration(milliseconds: 400));
      expect(size.alignment, Alignment.topLeft);
    });
  });
}
