//
//  ViewController.swift
//  MiraclePills
//
//  First project in iOS 10 from Beginner to Paid Professional
//
//  Created by Marc Bollon on 9/12/16.
//  Copyright © 2016 Marc Bollon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var hideView: UIView!
    @IBOutlet weak var bottomViewContainer: UIView!
    
    var states = ["Arkansas,", "Arizona"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        bottomViewContainer.isHidden = true
        statePicker.isHidden = false
    }
    
    @IBAction func buyBtnPressed(_ sender: AnyObject) {
        hideView.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        bottomViewContainer.isHidden = false
    }
}

