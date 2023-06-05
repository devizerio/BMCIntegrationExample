import React, {useEffect} from 'react';
import {SafeAreaView, StatusBar, Text, View} from 'react-native';
import {getMyCustomNativeMessage} from './src/bridge';

export default function App(): JSX.Element {
  const [state, setState] = React.useState<string>('');

  useEffect(() => {
    getMyCustomNativeMessage().then(msg => {
      setState(msg);
    });
  }, []);

  return (
    <SafeAreaView>
      <StatusBar barStyle="dark-content" />
      <View>
        <Text style={{textAlign: 'center'}}>{state}</Text>
      </View>
    </SafeAreaView>
  );
}
