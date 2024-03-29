//
//  AppDelegate.swift
//  Melody
//
//  Created by Zain on 2016-07-07.
//  Copyright © 2016 MZM Productions. All rights reserved.
//

import UIKit
import Parse
import ABMSoundCloudAPI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        // Set up the Parse SDK
        let configuration = ParseClientConfiguration {
            $0.applicationId = "melody-parse"
            $0.server = "https://melody-parse.herokuapp.com/parse"
        }
        Parse.initializeWithConfiguration(configuration)
        
        
        
        /*
        do {
            try PFUser.logInWithUsername("test", password: "test")
        } catch {
            print("Unable to log in")
        }
        
        if let currentUser = PFUser.currentUser() {
            print("\(currentUser.username!) logged in successfully")
        } else {
            print("No logged in user :(")
        }
        
        let acl = PFACL()
        acl.publicReadAccess = true
        PFACL.setDefaultACL(acl, withAccessForCurrentUser: true)
         */
        
        /*Soundcloud login
        client ID: 7beea6ee8685365f7869704aabfc533d
        client Secret: b2de82015e6a5902dcb4bbfbe0b993b6
        return_URL: https://Melody
         
         - (void) setClientID:(NSString *)clientID secretKey:(NSString *)secretKey {
         self.soundCloudPort = [[SoundCloudPort alloc] initWithClientId:clientID clientSecret:secretKey];
         }

        */
        
        return true

    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

