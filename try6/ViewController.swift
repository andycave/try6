//
//  ViewController.swift
//  try6
//
//  Created by Andy Cave on 8/5/16.
//  Copyright © 2016 Andy Cave. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

   

    @IBOutlet var pickerServiceDrop: UIPickerView!

    @IBOutlet var txtServiceDrop: UITextField!
    
    var serviceDropOptions = ["NA", "MBR","MR","MAR","MAL","ML","MBL"]
    //var pickerServiceDrop = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerServiceDrop.delegate = self
      // pickerServiceDrop.isHidden = true
        txtServiceDrop.inputView = pickerServiceDrop
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
       return serviceDropOptions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return serviceDropOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        txtServiceDrop.text = serviceDropOptions[row]
       // pickerServiceDrop.isHidden = true
    }

 //   func txtServiceDropBeginEditing(txtServiceDrop: UITextField) -> Bool {
   //     pickerServiceDrop.isHidden = false
 //       return false
 //   }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

