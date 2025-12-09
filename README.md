# Currency Converter (USD to INR)

A simple Flutter app that converts US Dollars (USD) into Indian Rupees (INR). The user enters a dollar amount, taps Convert, and the app displays the converted value using a fixed rate.

## Features
- Convert USD to INR instantly
- Clean Material UI
- Custom TextField with border, hint, and prefix icon
- Prefix icon color changes after conversion
- Uses StatefulWidget and setState for UI updates
- Proper result formatting

## How It Works
The convert() function reads the input, multiplies it by 90.17, and updates the result:

## Running the App
1. Clone the repository
2. Run:flutter pub get and
       flutter run


## Project Structure
- `main.dart` launches the app
- `practice.dart` contains the conversion UI and logic
- Uses Material widgets throughout

## About
This app is beginner-friendly and demonstrates:
- TextField handling
- Controllers
- State management with setState
- Basic Flutter UI building
