# SCAFFOLD
The Scaffold widget is the base of the screen for a single page.  This widget is able to occupy the whole device screen. Unconventionally, **Scaffold is the app.**
```dart
return Scaffold(  
  key: _key, 
  appBar: AppBar(...),  
  backgroundColor: Colors.grey.shade900,  
  body: GestureDetector(...),  
  floatingActionButton: FloatingActionButton(...),  
  endDrawer: Drawer(...),  
  bottomNavigationBar: BottomNavigationBar(...),  
);
```
## App Bar

Example Code :
```dart
appBar: AppBar(  
  title: GestureDetector(...),  
  backgroundColor: Colors.purple,  
  elevation: 10,  
  toolbarHeight: 70,  
  leading: IconButton(...),  
  shadowColor: Colors.black,  
  titleTextStyle: const TextStyle(...),  
  actions: <Widget>[...],  
),
```
## Body
This widget is the **primary and required property of a Scaffold.**

Example Code :
```dart
body: GestureDetector(  
  onTap: () {...},  
  child: Container( ...),  
),
```

## Background Color
Example Code :
```dart
backgroundColor: Colors.grey.shade900,
```
## Bottom Navigation Bar
Example Code :
```dart
bottomNavigationBar: BottomNavigationBar(  
  items: const <BottomNavigationBarItem>[ ...],  
  currentIndex: _selectedIndex,  
  selectedItemColor: Colors.white,  
  unselectedItemColor: Colors.grey,  
  onTap: _onItemTapped,  
  type: BottomNavigationBarType.shifting,  
),
```
## Floating Action Button
Example Code :
```dart
floatingActionButton: FloatingActionButton(  
  foregroundColor: Colors.yellow,  
  backgroundColor: Colors.purple,  
  onPressed: () {...},  
  child: const Icon(Icons.add),  
),
```
## Drawer
It is a **slider panel** that is displayed at the side of the body. Usually, it is hidden on the mobile devices, but the user can swipe it left to right or right to left to access the drawer menu. An appropriate icon for the drawer is set automatically in an appBar property.

Example Code :
```dart
drawer: Drawer(  
  width: 200,  
  backgroundColor: Colors.blue.shade800,  
  child: ListView(...),  
),
```
## End Drawer
It is similar to a drawer property, but they are displayed at the right side of the screen by default. It can be swiped right to left or left to right.

Example Code :

```dart
endDrawer: Drawer(  
  width: 200,  
  backgroundColor: Colors.grey.shade800,  
  child: ListView(...),  
),
```
---
There are more properties including -
- Primary
- Persistent Footer Button
- Resize to Avoid Bottom Inset
- Floating Action Button Location

Click to find out more about [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html) class.
---
Author : [Shubhi Paul](https://github.com/Shubhi-Paul)