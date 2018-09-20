//
//  ViewController.swift
//  RadioAndCheckbox
//
//  Created by Martin Prabhu on 19/09/18.
//  Copyright © 2018 TAG. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var checkboxButton : UIButton?
    @IBOutlet weak var checkboxStatusLabel : UILabel?

   // @IBOutlet weak var radioButton : UIButton?
    @IBOutlet weak var radioButtonStatusLabel : UILabel?

    @IBOutlet var genderRadioButtons: [SKRadioButton]!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkboxButton?.isSelected = true
        checkboxStatusLabel?.text = "Checkbox selected"

    }

    @IBAction func genderRadioButtonsTapped(_ sender: SKRadioButton) {
        genderRadioButtons.forEach { (button) in
            button.isSelected = false
        }
        sender.isSelected = true
    }

    @IBAction func checkBoxSelected (sender: UIButton){
        sender.showsTouchWhenHighlighted = true

        sender.isSelected = !sender.isSelected
        if (sender.isSelected){
          //  checkboxStatusLabel?.text = "Selected"
        } else {
            //checkboxStatusLabel?.text = "Not selected"
        }
    }

    @IBAction func didPressButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            radioButtonStatusLabel?.text = "Selected"
        } else{
          radioButtonStatusLabel?.text = "Not selected"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

