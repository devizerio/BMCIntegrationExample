//
//  MyCustomNativeCode.swift
//  BMCIntegrationExample
//
//  Created by Jensen Bernard on 05/06/2023.
//

import Foundation

@objc(MyCustomNativeCode)
class MyCustomNativeCode: RCTEventEmitter  {
  @objc
  func getMyCustomNativeMessage(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) -> Void {
    resolve("MyCustomNativeMessage: Success!")
  }
  
  @objc
  override func supportedEvents() -> [String]! {
    return []
  }
}
