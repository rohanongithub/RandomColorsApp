# RandomColorsApp
# Intro
RandomColors is an iOS application built with Swift that generates and displays 5000 random colors in a table view. The app allows users to explore a wide range of randomly generated colors and view them in detail by tapping on a specific cell in the table view.
Features

Generates 5000 random colors upon app launch

Displays the random colors in a table view

Allows users to view a selected color in detail by tapping on a cell

Utilizes UIKit and UITableViewController for a seamless user experience

## Installation
Clone the repository:
```bash
git clone https://github.com/your-username/RandomColors.git
```


Open the project in Xcode.


Build and run the project on your preferred simulator or physical device.

Upon launching the app, you will be presented with a table view filled with 5000 randomly generated colors. Tap on any cell to view the selected color in detail.

## Code Documentation

AppDelegate.swift

The AppDelegate class is responsible for handling the application's lifecycle events and managing the application's scene session configuration.

```bash
application(:didFinishLaunchingWithOptions:)
```

This method is called when the application finishes launching. In this application, it simply returns true to indicate that the launch was successful.

```bash
application(:configurationForConnecting:options:)
```

This method is called when a new scene session is being created. It returns a UISceneConfiguration instance with the default configuration for the new scene.

```bash
application(:didDiscardSceneSessions:)
```
This method is called when the user discards a scene session. It is used to release any resources that were specific to the discarded scenes.


ColorsDetailViewController.swift

The ColorsDetailViewController class is responsible for displaying the selected color in detail. It inherits from UIViewController.

```bash
viewDidLoad()
```
This method is called when the view controller's view is loaded into memory. It sets the background color of the view to the selected color or blue if no color is provided.

ColorsTableViewController.swift

The ColorsTableViewController class is the main view controller for the application. It inherits from UIViewController and conforms to the UITableViewDelegate and UITableViewDataSource protocols.

```bash
viewDidLoad()
```
This method is called when the view controller's view is loaded into memory. It calls the addRandomColors() method to generate and add 5000 random colors to the colors array.

```bash
addRandomColors()
```
This method generates 5000 random colors and appends them to the colors array.

```bash
createRandomColor()
```
This method generates a random UIColor instance with random red, green, and blue component values between 0 and 1.

```bash
prepare(for:sender:)
```
This method is called before segueing to the ColorsDetailViewController. It passes the selected color to the destination view controller.

```bash
tableView(:numberOfRowsInSection:)
```
This method is part of the UITableViewDataSource protocol. It returns the number of rows (colors) in the table view.

```bash
tableView(:cellForRowAt:)
```
This method is part of the UITableViewDataSource protocol. It configures and returns a table view cell for the specified index path. It sets the background color of the cell to the corresponding color in the colors array.
```bash
tableView(:didSelectRowAt:)
```
This method is part of the UITableViewDelegate protocol. It is called when a table view cell is selected. It performs the segue to the ColorsDetailViewController and passes the selected color as the sender.

SceneDelegate.swift

The SceneDelegate class is responsible for managing the application's window and scene lifecycle events.
```bash
scene(:willConnectTo:options:)
```
This method is called when a new scene is being created. It configures and attaches the application's window to the provided scene.
```bash
sceneDidDisconnect(:)
```
This method is called when the scene is being released by the system. It is used to release any resources associated with the scene.
```bash
sceneDidBecomeActive(:)
```
This method is called when the scene has moved from an inactive state to an active state. It can be used to restart any tasks that were paused when the scene was inactive.
```bash
sceneWillResignActive(:)
```
This method is called when the scene will move from an active state to an inactive state, such as when an incoming phone call is received.
```bash
sceneWillEnterForeground(:)
```
This method is called as the scene transitions from the background to the foreground. It can be used to undo any changes made when entering the background.
```bash
sceneDidEnterBackground(:)
```
This method is called as the scene transitions from the foreground to the background. It can be used to save data, release shared resources, and store scene-specific state information.

Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please create a new issue or submit a pull request.

License

This project is licensed under the MIT License.
