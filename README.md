**Optimistic Operation Manager for Flutter**

Welcome to the Optimistic Operation Manager package! This package provides a reusable solution for managing optimistic updates in Flutter apps. It allows you to handle operations that update local state immediately while ensuring eventual consistency with a backend service.

## Features
- **Optimistic Updates:** Update local state immediately for a smoother user experience.
- **Backend Synchronization:** Queue operations for asynchronous synchronization with the backend.
- **Error Handling:** Retry failed operations with exponential backoff or revert state based on custom logic.
- **Stream-Based State Management:** Listen to state updates via a stream for real-time UI updates.
- **Flexibility:** Supports any model with a unique identifier through an abstract interface.

---

## Getting Started

### Installation

Add the following to your `pubspec.yaml` file:
```yaml
dependencies:
  optimistic_update: ^1.0.0
```

Then, run:
```bash
flutter pub get
```

---

## Usage

### 1. Define Your Model

Ensure your model implements the `OptimisticModel` interface by providing a unique `id`.

```dart
class TodoItem implements OptimisticModel {
  final String id;
  final String title;
  final bool isCompleted;

  TodoItem({
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  TodoItem copyWith({String? title, bool? isCompleted}) {
    return TodoItem(
      id: id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
```

### 2. Initialize the Manager

Create an instance of `OptimisticOperationManager` with required callbacks.

```dart
final manager = OptimisticOperationManager<TodoItem>(
  syncCallback: (previousState, newState) async {
    // Simulate backend synchronization
    await Future.delayed(Duration(seconds: 1));
    print('Synced: ${newState.title}');
  },
  onError: (message, error) async {
    print('Error: $message');
    return false; // Return true to retry or false to revert changes
  },
);
```

### 3. Initialize the State

Initialize the manager with the initial state.

```dart
manager.initialize([
  TodoItem(id: '1', title: 'Learn Dart', isCompleted: false),
  TodoItem(id: '2', title: 'Build a Flutter app', isCompleted: false),
]);
```

### 4. Perform Operations

Perform optimistic operations by specifying the `previousState` and `newState`.

```dart
final previousItem = TodoItem(id: '1', title: 'Learn Dart', isCompleted: false);
final updatedItem = previousItem.copyWith(isCompleted: true);

manager.performOperation(
  previousState: previousItem,
  newState: updatedItem,
);
```

### 5. Listen for Updates

Subscribe to the `stateStream` to get real-time updates for UI rendering.

```dart
manager.stateStream.listen((state) {
  print('Current state: $state');
});
```

### 6. Clean Up

Dispose of the manager when it is no longer needed to avoid memory leaks.

```dart
manager.dispose();
```

---

## Advanced Features

### Exponential Backoff for Retries

The manager automatically retries failed operations with exponential backoff. Customize the retry behavior in the `onError` callback.

### Automatic Reversion on Failure

Failed operations and their dependent operations are reverted automatically to maintain data consistency.

---

## Example Application

Here's an example of integrating the manager in a Flutter app:

```dart
void main() {
  final manager = OptimisticOperationManager<TodoItem>(
    syncCallback: (previousState, newState) async {
      await Future.delayed(Duration(seconds: 1));
      print('Synced: ${newState.title}');
    },
    onError: (message, error) async {
      print('Error: $message');
      return false; // No retry
    },
  );

  manager.initialize([
    TodoItem(id: '1', title: 'Learn Dart', isCompleted: false),
    TodoItem(id: '2', title: 'Build a Flutter app', isCompleted: false),
  ]);

  runApp(MyApp(manager: manager));
}

class MyApp extends StatelessWidget {
  final OptimisticOperationManager<TodoItem> manager;

  const MyApp({required this.manager});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Optimistic Updates')),
        body: StreamBuilder<List<TodoItem>>(
          stream: manager.stateStream,
          builder: (context, snapshot) {
            final items = snapshot.data ?? [];
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item.title),
                  trailing: Checkbox(
                    value: item.isCompleted,
                    onChanged: (value) {
                      final updatedItem = item.copyWith(isCompleted: value!);
                      manager.performOperation(
                        previousState: item,
                        newState: updatedItem,
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
```

---

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests on GitHub.

---

## License

This package is distributed under the MIT License. See `LICENSE` for more information.

---

Happy coding! 🚀
