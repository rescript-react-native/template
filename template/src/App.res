/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * Converted from the React Native Community template App.tsx (0.84)
 */

open ReactNative
open ReactNativeSafeAreaContext

module NewAppScreen = {
  @react.component @module("@react-native/new-app-screen")
  external make: (
    ~templateFileName: string=?,
    ~safeAreaInsets: insets=?,
  ) => React.element = "NewAppScreen"
}

let styles = {
  "container": Style.s({flex: 1.}),
}

module AppContent = {
  @react.component
  let make = () => {
    let safeAreaInsets = useSafeAreaInsets()

    <View style={styles["container"]}>
      <NewAppScreen templateFileName="src/App.res" safeAreaInsets />
    </View>
  }
}

@react.component
let make = () => {
  let isDarkMode = Appearance.useColorScheme() == Some(#dark)

  <SafeAreaProvider>
    <StatusBar barStyle={isDarkMode ? #"light-content" : #"dark-content"} />
    <AppContent />
  </SafeAreaProvider>
}
