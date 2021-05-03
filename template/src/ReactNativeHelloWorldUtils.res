// You can probably remove this file when you start working on your app

type reactNativeNewAppScreenColors = {
  primary: string,
  white: string,
  lighter: string,
  light: string,
  black: string,
  dark: string,
  darker: string,
}

@module("react-native/Libraries/NewAppScreen")
external colors: reactNativeNewAppScreenColors = "Colors"

@module("react-native/Libraries/Core/Devtools/openURLInBrowser")
external openURLInBrowser: string => unit = "default"

module Header = {
  @react.component @module("react-native/Libraries/NewAppScreen")
  external make: _ => React.element = "Header"
}
module ReloadInstructions = {
  @react.component @module("react-native/Libraries/NewAppScreen")
  external make: _ => React.element = "ReloadInstructions"
}
module LearnMoreLinks = {
  @react.component @module("react-native/Libraries/NewAppScreen")
  external make: _ => React.element = "LearnMoreLinks"
}
module DebugInstructions = {
  @react.component @module("react-native/Libraries/NewAppScreen")
  external make: _ => React.element = "DebugInstructions"
}
