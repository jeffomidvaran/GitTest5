//
//  ViewController.swift
//  GitTest5
//
//  Created by jeffomidvaran on 5/18/20.
//  Copyright © 2020 jeffomidvaran. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let midi = AudioKit.midi
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(midi.inputNames)
        label.text = createInputNameString()

    }
    
    
    func createInputNameString() -> String {
        var result: String = ""
        for input in midi.inputNames {
            result += input + ", "
        }
        
        return result
    }
    
    
    @IBAction func button(_ sender: UIButton) {
        label.text = createInputNameString()
    }
    
}

