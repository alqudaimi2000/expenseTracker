# Expense Tracker App

A Flutter application for tracking personal expenses with a clean and intuitive user interface.

## Features

- 📊 Visual expense tracking with a bar chart
- 📱 Responsive design for both portrait and landscape orientations
- 🎨 Material Design 3 with light and dark theme support
- 💰 Add, view, and delete expenses
- 📅 Date picker for expense entries
- 🏷️ Categorize expenses (Food, Travel, Leisure, Work)
- 🔄 Swipe-to-delete functionality with undo option
- ⌨️ Keyboard-aware form for adding new expenses

## Screenshots

[Add screenshots here]

## Getting Started

### Prerequisites

- Flutter SDK (version 3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository

```bash
git clone [repository-url]
```

2. Navigate to the project directory

```bash
cd expensetracker_app
```

3. Install dependencies

```bash
flutter pub get
```

4. Run the app

```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # Application entry point
├── theme.dart                # Theme configuration
├── models/
│   └── expense.dart          # Expense model and categories
└── widgets/
    ├── expenses.dart         # Main screen widget
    ├── new_expense.dart      # Add expense form
    ├── chart/
    │   └── chart.dart        # Expense visualization
    └── expenses_list/
        ├── expenses_list.dart # List of expenses
        └── expense_item.dart  # Individual expense item
```

## Key Features Implementation

### Expense Model

- Uses UUID for unique identification
- Supports multiple categories
- Includes formatted date display

### Chart Visualization

- Bar chart showing expense distribution
- Color-coded by category
- Responsive to screen size
- Compact design for mobile view

### Expense Management

- Full-screen modal for adding expenses
- Form validation for required fields
- Keyboard-aware layout
- Swipe-to-delete with undo functionality

### UI/UX

- Material Design 3 implementation
- Light and dark theme support
- Responsive layout for different screen sizes
- Intuitive navigation and interactions

## Dependencies

- `flutter`: Core Flutter framework
- `uuid`: For generating unique IDs
- `intl`: For date formatting
- `cupertino_icons`: For iOS-style icons

## Future Enhancements

- [ ] Data persistence
- [ ] Expense filtering and sorting
- [ ] Budget tracking
- [ ] Export functionality
- [ ] User authentication
- [ ] Cloud synchronization

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Material Design team for the design system
- All contributors to the open-source packages used in this project
