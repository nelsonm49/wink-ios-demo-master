//
//  ViewController.swift
//  WinkDemo-Swift
//
//  Created by Joseph Lin on 7/6/16.
//  Copyright © 2016 Wink Inc. All rights reserved.
//

import UIKit

enum Endpoint: String {
    case User = "users/me"
    case Devices = "users/me/wink_devices"
    
    func URL() -> NSURL {
        let string = "https://staging-api.wink.com/" + self.rawValue
        return NSURL(string: string)!
    }
}


class ViewController: UIViewController {
    var dic:[String:AnyObject]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getUser()
        self.getJSONData()
    }

    func getUser() {
        let auth = "Bearer " + "JwxfbeBDAZ0cHX7Egnez5wQZbkjPkUHL"
        
        let request = NSMutableURLRequest(URL: Endpoint.User.URL())
        request.setValue(auth, forHTTPHeaderField: "Authorization")
        
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        var JData: [String:AnyObject]!
        
        let session = NSURLSession(configuration: config)
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) in
            //
            do
            {
                JData = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? [String:AnyObject]
            }catch{
                print("error")
            }
            print("--------Wink Data:-------\n\(JData)","\n--------------------\n")
        }
        
        
        task.resume()
        
    }
    
    func getJSONData()
    {
        let url = NSBundle.mainBundle().URLForResource("jsondata", withExtension: "json")
        let data = NSData.init(contentsOfURL: url!)
        do
        {
            dic = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? [String:AnyObject]
        }catch
        {
            print("error fetching JSONData")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDataSegue"
        {
            let svc = segue.destinationViewController as! PeopleTableViewController
            svc.dic = self.dic
        }
    }
}

