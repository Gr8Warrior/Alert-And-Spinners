//
//  ViewController.swift
//  Spinners And Alerts
//
//  Created by Shailendra Suriyal on 31/01/17.
//  Copyright © 2017 RealDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView();

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
            
            print("Okay Pressed")
            
            self.dismiss(animated:true, completion: nil);
        }));
        
        alertController.addAction(UIAlertAction(title: "Nopes", style: UIAlertActionStyle.default, handler: { (action) in
            
            print("Nopes Presses")
            
            self.dismiss(animated:true, completion: nil);
        }));
        
        alertController.addAction(UIAlertAction(title: "Don't Know", style: UIAlertActionStyle.default, handler: { (action) in
            
            print("Don't Know Presses")
            
            self.dismiss(animated:true, completion: nil);
        }));
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func pauseApp(_ sender: Any) {
        
        activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 160, height: 160))
            
        activityIndicator.center = self.view.center
            
        activityIndicator.hidesWhenStopped = true
            
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
  // for stoping user interaction      UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    @IBAction func restoreApp(_ sender: Any) {
        
 //  UIApplication.shared.endIgnoringInteractionEvents()
        
        activityIndicator.stopAnimating()
    }
    
}

