# BMCIntegrationExample

Run this demo app:

```
$ npm install
$ npx pod-install
$ npx react-native run-ios
```

More info about react native setup: https://reactnative.dev/docs/environment-setup?guide=native&platform=ios

## How to add custom code

The code of the SDK can be added in `ios/MyCustomNativeCode/MyCustomNativeCode.swift`. When adding new functions, make sure to add them to the bridge as well in `ios/MyCustomNativeCode/MyCustomNativeCode.m`. I have added an example function called `getMyCustomNativeMessage()` which can be called in React Native. See `src/bridge.tsx` for an example on how to call the bridge functions.

So:

1. Add code to `ios/MyCustomNativeCode/MyCustomNativeCode.swift`
2. Add funcs to bridge to `ios/MyCustomNativeCode/MyCustomNativeCode.m`
3. Call the funcs in `src/bridge.tsx`

## Remarks

Note that Build Libraries for Distribution is set to NO. Switching it to yes will result in errors during the build process.

We prefer to try a local pod, but we are happy with whichever integration method works!