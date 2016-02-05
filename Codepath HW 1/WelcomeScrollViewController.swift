//
//  WelcomeScrollViewController.swift
//  Codepath HW 1
//
//  Created by Alvin Hsia on 2/4/16.
//  Copyright © 2016 Alvin Hsia. All rights reserved.
//

import UIKit

class WelcomeScrollViewController: UIViewController {

    @IBOutlet weak var WelcomeScrollView: UIScrollView!
    
    @IBOutlet weak var welcome1ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        WelcomeScrollView.contentSize = CGSize(width: 960, height: 568)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
