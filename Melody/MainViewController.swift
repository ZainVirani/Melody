//
//  MainViewController.swift
//  Melody
//
//  Created by Zain on 2016-07-07.
//  Copyright © 2016 MZM Productions. All rights reserved.
//

import UIKit
import ABMSoundCloudAPI


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let clientID = "7beea6ee8685365f7869704aabfc533d"
        let clientSecret = "b2de82015e6a5902dcb4bbfbe0b993b6"
        let returnURL = "https://Melody"
        
        let soundCloudPort = SoundCloudPort(clientId: clientID, clientSecret: clientSecret)
        
        soundCloudPort.loginWithResult({ (true) in //edit result block for accurate loading
            ()
            }, usingParentVC: self.parentViewController!, redirectURL: returnURL)
        
        //load first profile
        
    }
    
    func loadNewProfile(userKey: Int){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Dispose of logged collections and played items
    }


}

