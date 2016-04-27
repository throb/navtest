//
//  NewSessionViewController.swift
//  shitballs
//
//  Created by Robert Nederhorst on 4/23/16.
//  Copyright © 2016 Robert Nederhorst. All rights reserved.
//

import UIKit

class NewSessionViewController: UIViewController {

    @IBOutlet weak var buttonBG: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        buttonBG.backgroundColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToList" {
                if let destinationVC = segue.destinationViewController as? ListViewController {
                    destinationVC.fromNew = true
            }
            
        }
    }
    
    @IBAction func closeTapped(sender: AnyObject) {
        self.buttonBG.backgroundColor = UIColor.blackColor()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginPageView = storyboard.instantiateViewControllerWithIdentifier("ListVC") as! ListViewController
        loginPageView.fromNew = true
        
        self.tabBarController?.selectedIndex = 2


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
