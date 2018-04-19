import Foundation

@objc(HelloPlugin) class HelloPlugin : CDVPlugin {
  func sayHello(command: CDVInvokedUrlCommand) {
    let message = "Hello !";

    let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: message);
    commandDelegate.send(pluginResult, callbackId:command.callbackId);
  }
}
