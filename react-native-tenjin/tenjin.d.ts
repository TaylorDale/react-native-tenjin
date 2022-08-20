import 'react-native';

export interface Tenjin {
    async initTenjin(apiKey: string, gdprConsent: boolean, testMode: boolean);
  // async initTenjin:(NSString *)apiKey gdprParam:(nonnull BOOL)gdpr testModeParam:(nonnull BOOL)testMode callback:(RCTResponseSenderBlock)callback)
}

declare module 'react-native' {
  interface NativeModulesStatic {
    Tenjin: Tenjin;
  }
}