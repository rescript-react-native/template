module.exports = {
  preset: 'react-native',
  watchman: false,
  transformIgnorePatterns: [
    'node_modules/(?!(?:.pnpm/)?((jest-)?react-native|@react-native(-community)?|react-native-safe-area-context|@react-native/new-app-screen|@rescript|rescript|rescript-react-native|@rescript-react-native))',
  ],
};
