# 🎉 Birthdays App

A simple iOS app built using **SwiftUI** and **SwiftData** that helps you keep track of your friends' birthdays. Add new birthdays, and easily spot whose birthday is today with a birthday cake icon! 🎂

---

## 📱 Features

- View a list of friends and their birthdays.
- Add new friends with a name and birthday.
- Automatically highlights today's birthdays with a 🎂 icon.
- Built using **SwiftUI**, **SwiftData**, and the new `.modelContainer`.

---

## 🛠️ Technologies Used

- **SwiftUI** for building the user interface.
- **SwiftData** for model persistence and querying.
- **@Model** and `@Query` for seamless data handling.
- **NavigationStack**, **List**, and **DatePicker** for modern UI components.

---

## 🧩 Project Structure

```
📁 BirthdaysApp
├── 📄 BirthdaysApp.swift     # Entry point of the app
├── 📄 ContentView.swift      # Main UI to view and add birthdays
└── 📄 Friend.swift           # Data model for storing friend info
```

---

## 📄 Code Overview

### `Friend.swift`
Defines the `Friend` model used to store name and birthday. Includes a computed property `isBirthdayToday`.

```swift
@Model
class Friend {
    var name: String
    var birthday: Date

    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }

    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
```

---

### `ContentView.swift`
Displays a list of all friends and their birthdays. Users can add new entries using the DatePicker and TextField UI.

```swift
@Query(sort: \Friend.birthday) private var friends: [Friend]
@Environment(\.modelContext) private var context
```

The bottom panel allows users to add new birthdays, which are immediately saved using `context.insert()`.

---

### `BirthdaysApp.swift`
App entry point that initializes the data model container and sets `ContentView` as the root view.

```swift
@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
```

---

## 🚀 Getting Started

### Prerequisites
- Xcode 15+
- iOS 17+ simulator or device

### How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/BirthdaysApp.git
   cd BirthdaysApp
   ```
2. Open `BirthdaysApp.xcodeproj` or `.xcodeworkspace` in Xcode.
3. Run the project on a simulator or connected device.

---

## 📌 Future Improvements

- Add birthday notifications.
- Store data in iCloud or use CoreData for backup.
- Add editing and deleting functionality.

---

## 🧑‍💻 Author

**Mansi K**  

