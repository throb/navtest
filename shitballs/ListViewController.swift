//
//  ListViewController.swift
//  shitballs
//
//  Created by Robert Nederhorst on 4/23/16.
//  Copyright © 2016 Robert Nederhorst. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    var fromNew: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        if fromNew == true {
            performSegueWithIdentifier("zz1", sender: self)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
