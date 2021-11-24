//
//  ViewController.swift
//  count
//
//  Created by Yo Higashida on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    
    @IBOutlet var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus() {
        count += 1
    }
}

