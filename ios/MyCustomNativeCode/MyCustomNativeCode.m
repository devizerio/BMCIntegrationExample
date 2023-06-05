//
//  MyCustomNativeCode.m
//  BMCIntegrationExample
//
//  Created by Jensen Bernard on 05/06/2023.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(MyCustomNativeCode, RCTEventEmitter)

RCT_EXTERN_METHOD(getMyCustomNativeMessage: (RCTPromiseResolveBlock)resolve rejecter: (RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(supportedEvents)

@end
