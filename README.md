# Flutter Task: Auth & API Integration 

Hey! This is my Flutter app for the technical assessment. It's got user authentication, API data fetching, search functionality, and responsive design - basically everything the task asked for.

##  Task Requirements

Here's what I built:
- **State Management**: BLoC pattern
- **REST API**: Breaking Bad API for character data
- **Firebase Auth**: Email/password login with verification
- **Search**: Real-time filtering of characters
- **Responsive UI**: Works on different screens

##  Setup Instructions

### What You Need
- Flutter SDK (3.8.1+)
- Android Studio or VS Code
- Firebase account

### Quick Start

**1. Get the code**
```bash
git clone https://github.com/Mohmdhamad/eyego_auth_and_api_integration_task.git
cd eyego_task
flutter pub get
```

**2. Firebase Setup**
- Create a project at [Firebase Console](https://console.firebase.google.com/)
- Enable Email/Password authentication
- Download `google-services.json` → put it in `android/app/`
- Update `firebase_options.dart` with your credentials if needed

**3. Run it**
```bash
flutter run
```

### Key Features

**Authentication**
- Register with email/password
- Form validation before submission
- Email verification through Firebase
- Login only after verification

**Character Browsing**
- Fetches data from Breaking Bad API
- Grid layout with character images
- Tap to see full details
- Smooth loading states

**Search**
- Tap search icon to activate
- Type to filter in real-time
- Clear button to reset
- Maintains both full and filtered lists

### Tech Stack
```
flutter_bloc: State management
firebase_auth: User authentication
dio: API calls
get_it: Dependency injection
dartz: Error handling (Either pattern)
flutter_screenutil: Responsive sizing
```

##  App Flow

1. **Login/Register** → Create account or sign in
2. **Home Screen** → Browse all characters in a grid
3. **Search** → Filter characters by name
4. **Details** → Tap any character for full info

## 🏗️ Project Structure

```
lib/
├── core/              # Shared stuff (API, routes, utils)
├── features/
│   ├── auth/         # Login/register with Firebase
│   └── characters/   # API data and character display
```

Each feature has:
- `data/` → API/Firebase calls
- `domain/` → Business logic
- `presentation/` → UI and BLoC


## Notes

- Currently supports email/password only (Google Sign-In would be easy to add)
- Images load from the API with placeholders
- Error messages are user-friendly, not technical gibberish
- Form validation prevents bad data from being submitted
