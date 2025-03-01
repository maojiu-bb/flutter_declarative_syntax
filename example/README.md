# Flutter Declarative Syntax

A Flutter package that provides declarative syntax extensions for more readable and maintainable widget code.

## Features

### List Extensions

Convert lists of widgets into common layout widgets:

```dart
// Convert list to ListView
final listView = <Widget>[
  Text('Item 1'),
  Text('Item 2'),
].toListView();

// Convert list to Column
final column = <Widget>[
  Text('Top'),
  Text('Bottom'),
].toColumn();

// Convert list to Row
final row = <Widget>[
  Text('Left'),
  Text('Right'),
].toRow();

// Convert list to Stack
final stack = <Widget>[
  Text('Background'),
  Text('Foreground'),
].toStack();
```

### Widget Extensions

#### Text Styling

```dart
Text("Flutter")
    .withColor(Colors.pink)
    .withFontSize(16)
    .withFontWeight(FontWeight.w600)
    .backgroundColor(Colors.blue)
    .withAlignment(Alignment.center);
```

#### Layout Control

```dart
Text("Content")
    .padding(all: 16)
    .margin(horizontal: 8)
    .expanded()
    .flexible(flex: 2)
    .center()
    .aspectRatio(16/9);
```

#### Animation

```dart
Text("Animated")
    .animatedOpacity(
      opacity: 0.5,
      duration: Duration(milliseconds: 300),
    )
    .animatedContainer(
      duration: Duration(milliseconds: 300),
      width: 200,
      height: 100,
    )
    .animatedScale(
      scale: 1.2,
      duration: Duration(milliseconds: 300),
    );
```

#### Effects

```dart
Text("Effects")
    .clipRRect(borderRadius: BorderRadius.circular(8))
    .shadow(
      color: Colors.black26,
      blurRadius: 10,
    )
    .backdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    );
```

#### Gesture Handling

```dart
Text("Tap Me")
    .onTap(() => print('Tapped!'))
    .onDoubleTap(() => print('Double tapped!'))
    .onLongPress(() => print('Long pressed!'));
```

#### Visibility Control

```dart
Text("Conditional")
    .visible(shouldShow)
    .invisible()
    .when(
      condition,
      builder: (widget) => widget.withColor(Colors.green),
      orElse: (widget) => widget.withColor(Colors.red),
    );
```

#### Transform

```dart
Text("Transform")
    .scale(scale: 1.5)
    .rotate(angle: pi / 4)
    .translate(offset: Offset(10, 10));
```

#### Focus & Semantics

```dart
Text("Accessible")
    .focusable(autofocus: true)
    .semanticLabel('Important text')
    .semanticButton(label: 'Action button');
```

## Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_declarative_syntax: ^1.0.0
```

Import and use:

```dart
import 'package:flutter_declarative_syntax/flutter_declarative_syntax.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello')
        .withColor(Colors.blue)
        .padding(all: 16)
        .onTap(() => print('Hello!'));
  }
}
```

## Additional Information

- [Documentation](https://pub.dev/packages/flutter_declarative_syntax)
- [GitHub Repository](https://github.com/maojiu-bb/flutter_declarative_syntax)
- [Issue Tracker](https://github.com/maojiu-bb/flutter_declarative_syntax/issues)

## Contributing

Feel free to contribute to this project:

1. Fork it from [flutter_declarative_syntax](https://github.com/maojiu-bb/flutter_declarative_syntax)
2. Create your feature branch (`git checkout -b feature/amazing`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing`)
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

[maojiu-bb](https://github.com/maojiu-bb)
