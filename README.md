# Coffee React Native Template

This is a starter template for creating React Native apps. It comes with Flux, CoffeeScript, and Gulp. Everything is configured so that you can start building right away!

### How to use

**Installing React-Native:**

* `$ npm install -g react-native-cli`
* `$ npm install -g coffee-react-transform`
*  Install Homebrew
* `$ brew install watchman`

**Getting up and running:**

* Copy from the `clone URL` on the right hand side of this repo
* Open up your terminal and navigate to the directory you'd like to put your project folder
* `$ git clone {paste URL}`
* Now the clone will name everything `CoffeeReactNative`, but we can change that.
	* Change the name of the folder to whatever you like. I will use `ExampleApp`
	* `$ cd ExampleApp`
	* `$ open ExampleApp.xcodeproj/`
	* In XCode, click your project, and then click it again to change the name to `ExampleApp` (or whatever you used)
		* It will say its going to change a bunch of things, let it.
	* Now open up the project in sublime.
	* Press `Cmd+Shift+F` and search for `CoffeeReactNative`
	* Go to package.json, index.ios.js, project.pbxproj, and AppDelegate.m and change all instances of `CoffeeReactNative` to `ExampleApp`
		* Do this by using `Cmd+F`, search for `CoffeeReactNative`, use `Cmd+D` until you've selected them all, then type `ExampleApp`
	*DONE!
* That was the hard way of doing it... now for the easier way (imo).
	* Once you've cloned the repo, instead of `cd`ing into it, just use `$ react-native init ExampleApp`
	* Open up `ExampleApp` and `CoffeeReactNative` in sublime.
	* Copy dependencies from this into your `Example App`
	* Delete the `index.ios.js` file
	* Copy `src` folder into `ExampleApp`
	* Copy `index.ios.coffee` into `ExampleApp` and inside of it change the `CoffeeReactNative` to `ExampleApp`
	* Add `dist/` and `index.ios.js` to `.gitignore`
	* DONE!
* After you have the naming done properly, run `$ npm install` in the project directory to install dependencies

**Running the Project:**

* `$ gulp` to build the project and watch it for any changes
* `$ npm start` to start the react-native packager
* `$ open ExampleApp.xcodeproj`
* Press play in XCode and you're running a react-native app!
* You can press `Cmd+D` in the simulator to open up Dev Options and use `Enable Live Reload` and `Debug in Chrome` if you'd like

**Additional Notes:**

* `src/scripts/components` is where you do all of the UI building. I normally add Top Level components straight in the component folder and I put the smaller, reusable components in `components/ui`.
	* For example, I could have a `List` component as my top level and inside of it I could render multiple instances of a `ListItem` component that is inside my `components/ui` folder