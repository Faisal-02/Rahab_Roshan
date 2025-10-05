# Rahab_Roshan

Rahab Roshan is a mobile application developed using **Flutter.  
It aims to showcase various **events and competitions** held within the residential community — including **sports, cultural, and recreational activities**.  
The project seeks to build an active community and enhance the **quality of life**, in alignment with **Saudi Vision 2030\*\*.

## 📱 Project Overview

The Rahab Roshan app allows users to explore and participate in local events held within the residential complex.  
It aims to foster an engaging environment that promotes community interaction, activity, and entertainment in one place.

## ⚙️ Features:

- 🏆 Display events and competitions organized in the residential complex.
- 🔔 Receive notifications about new and upcoming events.
- 💡 Modern, user-friendly interface supporting the Arabic language.
- 🔎 Search for events based on category or interest.

## Technologies Used

- Flutter – For building the mobile application UI.
- Dart – As the main programming language.
- Figma – For UI/UX design and wireframing.
- GitHub – For version control and collaborative development.

## 📂 Project Structure

This project follows a **Feature-Based Architecture**. Each part of the User Interface (UI) and the related Control Logic (Logic) for a specific feature resides within its own dedicated folder. This organization facilitates code separation, readability, and independent development.

### File Hierarchy

```Text
.
├── lib/
│   ├── features/
│   │   ├── arena/
│   │   │   ├── controllers/

│   │   │   ├── screen/

│   │   │   └── widget/

│   │   ├── championship_start/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── competitions/
│   │   │   ├── controllers/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── event_details/
│   │   │   ├── controllers/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── home/
│   │   │   ├── controllers/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── onboarding/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── pre_challenge/
│   │   │   ├── controllers/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   ├── profile/
│   │   │   ├── screens/
│   │   │   └── widgets/
│   │   └── result/
│   │       ├── controllers/
│   │       ├── screens/
│   │       └── widgets/
│   ├── splash/
│   │   └── screens/
│   └── style/                  # General app styles and assets
│       ├── colors/             # Color definitions
│       └── themes/             # Theme definitions
│   ├── ctx.dart                # (Context or Helper functions file - placeholder)
│   └── main.dart               # The main application entry point
└── ios/
```

## 🚀 Installation & Run

1.Clone the repository.

2.Navigate to the project directory:
cd rehab_roshan_project

3.Install dependencies:
flutter pub get

4.Run the app on an emulator or device:
flutter run

##Design Prototype:

The app’s interface was designed using Figma.
You can view the full design here:
https://www.figma.com/design/pNpBtxtcsPIVYVBX1mYENi/Roshen-Rehab?node-id=71-1662&t=I2Pa2xBsgdrsiM6J-1

##📸 App Screenshots:

#👩‍💻 Team:

Shatha Albalawi – Flutter Developer

Faisal Alshammari – Flutter Developer

Eyad – UI/UX Designer

Kholoud – UI/UX Designer

Atheer - UI/UX Designer
