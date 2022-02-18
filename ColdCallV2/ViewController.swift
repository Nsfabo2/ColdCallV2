//
//  ViewController.swift
//  ColdCallV2
//
//  Created by Najla on 19/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var NumberLabel: UILabel!
    
    var Names: [String] = [
            "SpongeBob",
            "Patrick",
            "Mr.Krabs",
            "Sandy",
            "Gary",
            "Squidward",
        ]
    
    var Numbers: [String] = [
        "1",
        "2",
        "3",
        "4",
        "5",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRandomNameNumber(_ sender: UIButton) {
        NameLabel.text = Names[Int.random(in: 0..<6)]
        NumberLabel.text = Numbers[Int.random(in: 0..<5)]
        if NumberLabel.text == "1" || NumberLabel.text == "2" {
            NumberLabel.textColor = UIColor.red
        }
        else if NumberLabel.text == "3" || NumberLabel.text == "4" {
            NumberLabel.textColor = UIColor.orange
        }
        else{
            NumberLabel.textColor = UIColor.green
        }
        
    }//end function
    
}

