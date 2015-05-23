//
//  ViewController.swift
//  iphone_google_ads
//
//  Created by loichengllc on 5/23/15.
//  Copyright (c) 2015 Loi Cheng LLC. All rights reserved.
//

import UIKit
import Foundation
import GoogleMobileAds

class ViewController: GAITrackedViewController {
    
    @IBOutlet weak var bannerView: GADBannerView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Specify the ad unit ID.
        bannerView?.adUnitID = GADBannerConstant;
        bannerView?.rootViewController = self;
        bannerView?.backgroundColor = UIColor.blackColor();
        var request:GADRequest = GADRequest()
        request.testDevices = ["SIMULATOR"]
        bannerView?.loadRequest(request)
        
        // name screen for GAI
        self.screenName = "Screen Name";
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
