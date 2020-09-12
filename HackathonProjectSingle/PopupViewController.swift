//
//  PopupViewController.swift
//  HackathonProjectSingle
//
//  Created by Akshi  on 14/9/19.
//  Copyright © 2019 Akshi J. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var userPostTitle: UITextField!
    @IBOutlet weak var userPost: UITextField!
    var postTitle = ""
    var post = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func createPost(_ sender: Any) {
        self.post = userPost.text!
        performSegue(withIdentifier: "postSegue", sender: self)
        self.postTitle = userPostTitle.text!
        performSegue(withIdentifier: "postSegue", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ForumViewController
        vc.finalPost = self.userPost.text!
        vc.finalUserTitle = self.userPostTitle.text!
        
    }
}
