//
//  ForumViewController.swift
//  HackathonProjectSingle
//
//  Created by Akshi  on 14/9/19.
//  Copyright © 2019 Akshi J. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController {
    var finalPost = ""
    var finalUserTitle = ""
    
    @IBOutlet weak var printUserTitle: UILabel!
    @IBOutlet weak var printPost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printPost.text = finalPost
        printUserTitle.text = finalUserTitle
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (printPost.text?.isEmpty ?? true) {
            printPost.isHidden = true
        } else {
            printPost.isHidden = false
        }
        
        if (printUserTitle.text?.isEmpty ?? true) {
            printUserTitle.isHidden = true
        } else {
            printUserTitle.isHidden = false
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func composePost(_ sender: Any) {
        printUserTitle.isHidden = false
        printPost.isHidden = false
    }
    
}
