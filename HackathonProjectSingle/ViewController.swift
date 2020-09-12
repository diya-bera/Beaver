//
//  ViewController.swift
//  HackathonProjectSingle
//
//  Created by Akshi  on 14/9/19.
//  Copyright © 2019 Akshi J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageView = UIImageView()

    @IBOutlet weak var material1: UITextField!
    
    
    @IBOutlet weak var imageForIdea: UIImageView!
    
    @IBOutlet weak var ideaDisplay: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showIdeas(_ sender: Any) {
        
        if material1.text == "paper"{
            ideaDisplay.text = "You can do Origami with the material that you provided!"
            imageForIdea.image = UIImage(named: "Origami")
        }
        
        else if material1.text == "straws"{
            ideaDisplay.text = "If you have a bunch of bendy straws, then you’re all set to make this straw necklace! With triangle links, this necklace is great for a summer dress or as a gift."
            imageForIdea.image = UIImage(named: "Straw")
        }
        else{
            ideaDisplay.text = "We did not find projects for the material you entered. Check out the forum for suggestions. "
            imageForIdea.image = UIImage(named:"sad face 2")
        }
    }
    
}

