//
//  main.swift
//  AppLaunch
//
//  Created by Banca March on 24/11/22.
//  
//

import UIKit

let appDelegateClass: AnyClass = NSClassFromString("AppDelegateUseToTest") ?? AppDelegate.self

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(appDelegateClass))
