# Ignation-Hub
Welcome to the Ignation Hub, the best exploiting/script hub for Roblox.
Supported Games:
Coming soon

# UI Library
Our UI Library is special, it uses multiple windows instead of having one window with multiple tabs like a Geometry Dash client.

**Load**

After loading the library, you may access the global variable named IgnUILib
```lua
    Library = _G.IgnUILib
```
You may also use ``_G:GetIgnUILib(StartUpSoundId:number)`` if you want a custom StartUp sound.


**Functions**

Use ``:CreateWindow`` to create a new window with a specified Name and Primary Color.
```lua
    Library:CreateWindow(Name:string, Color:Color3): Frame
```

``:CreateButton`` will add a button to your Window, and will callback whenever the button is clicked.
```lua
    Library:CreateButton(Window:CanvasGroup, Name:string, IconId:number?, Callback: ()->()): Frame```

``:CreateToggle`` will add a bool toggle to your Window, and will callback a boolean value whenever the button is clicked.
```lua
    Library:CreateToggle(Window:CanvasGroup, Name:string, State:boolean, Callback: ()->()): Frame```

``:CreateTextBox`` will add a TextBox to your Window, and will callback a string value whenever the textbox's FocusLost event is triggered. You can also customize it to be a Large TextBox or Multiline-Code TextBox.
```lua
    Library:CreateTextBox(Window:CanvasGroup, Name:string, Text:string, Properties:{Large:boolean, Placeholder:string, Code:boolean}, Callback: ()->(), Changed: ()->())```

``:CreateSlider`` will add a horizontal slider to your Window, and will callback a number value whenever the slider's pointer is moved. You may also add custom properties such as Min (defaults to 0), Max (defaults to 100), and Step (defaults to 1). 
```lua
    Library:CreateSlider(Window:CanvasGroup, Name:string, Value:number, Properties:{Step:number, Max:number, Min:number}, Callback: ()->())```
