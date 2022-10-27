# Providers  
**Stata Management** means sharing data between screens and widgets. Flutter provides variety of ways to manage state such as  :  
- setState approach  
- provider approach  
- inherit Widgets and Modals  
- redux  

In Provider, widgets listen to changes in the state and update as soon as they are notified.

Therefore, instead of the entire widget tree rebuilding when there is a state change, only the affected widget is changed, thus reducing the amount of work and making the app run faster and more smoothly.

## Providers Types
Providers are of various types . Few of them are mentioned below :
- **Provider** : it is the basic provider
	- Listenable Provider
	- Change Notifier Provider
	- Value Listener Provider
	- Stream Provider
- **Proxy Provider** : depends on other providers for value
- **Inherited Provider** : provides a general implementation of the **InheritedWidget** , used to make custom provider
- **Future Provider** : listens for a **Future** and then passes its values to its children and descendants
- **Multi Provider** : provide more than one class at the same time
- **Steam Provider** : listens for a Stream and then passes its values to its children and descendants

## Procedure  
All provider classes must extend **ChangeNotifier** class.  
```dart  
class SkillsProvider extends ChangeNotifier{...}  
```  
  
When any change is made in this class, **notifyListeners()** function is called to notify the listener of the changes.  
```dart  
void addSkill(int index){    
  availableSkills[index].icon = Icons.check;    
  availableSkills[index].addedSkill = true;    
  addedSkills.add(availableSkills[index]);    
  notifyListeners(); 
}  
```  

Import the specific required **Provider** .
  
**Consumer** class is used for displaying the changes. It obtains the provider from its ancestors and passes the value obtained to the builder.  
  
```dart  
Consumer<SkillsProvider>(    
  builder: (context, provider, child) {    
    return ListView.builder(    
      itemCount: provider.getAddedSkillsList().length,    
      itemBuilder: (BuildContext context, int index) {    
        return Container(...);
```  

## Installation  
Run  
``` flutter pub add provider ```   

---  OR  --- 
  
Update dependencies in pubspec.yaml file  
  
```yaml 
dependencies:    
provider: ^6.0.4
 ```  
 
Then in the terminal run  
``` 
flutter pub get
 ```   

Finally in your dart file import the package  
```dart  
import 'package:provider/provider.dart';
```
---
Author :  [Shubhi Paul](https://github.com/Shubhi-Paul) 