//
//  ViewController.swift
//  Spinners And Alerts
//
//  Created by Shailendra Suriyal on 31/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert", message: "This is an Alert", preferredStyle: UIAlertControllerStyle.alert )
        
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: { (action) in
            
            print("Alert is dismissed")
            
            self.dismiss(animated:true, completion: nil);
        }));
    
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pauseApp(_ sender: Any) {
    }
    
    @IBAction func restoreApp(_ sender: Any) {
    }
    
}

