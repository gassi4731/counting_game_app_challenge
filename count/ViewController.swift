//
//  ViewController.swift
//  count
//
//  Created by Yo Higashida on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    var randomNumber1: Int = 0
    var randomNumber2: Int = 0
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var randomNumber1ImageView: UIImageView!
    @IBOutlet var randomNumber2ImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setRandomImage()
    }
    
    @IBAction func plus() {
        count += 1
        countLabel.text = String(count)
    }
    
    @IBAction func minus() {
        count -= 1
        countLabel.text = String(count)
    }
    
    @IBAction func next() {
        if randomNumber1 + randomNumber2 == count {
            setRandomImage()
            count = 0
            countLabel.text = String(count)
        } else {
            let alert: UIAlertController = UIAlertController(title: "エラー", message: "答えが違うよ！", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "もう一度", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func setRandomImage(){
        randomNumber1 = Int.random(in: 1...10)
        randomNumber2 = Int.random(in: 1...10)
        randomNumber1ImageView.image = UIImage(named: String(randomNumber1))
        randomNumber2ImageView.image = UIImage(named: String(randomNumber2))
    }
}

