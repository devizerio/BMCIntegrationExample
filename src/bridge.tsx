// Custom Bridge File

import {NativeModules} from 'react-native';

const MyCustomNativeCode = NativeModules.MyCustomNativeCode;

export const getMyCustomNativeMessage = async (): Promise<string> => {
  const msg = await MyCustomNativeCode.getMyCustomNativeMessage();

  if (!msg) {
    return 'MyCustomNativeMessage: Failure!';
  }

  return msg;
};
