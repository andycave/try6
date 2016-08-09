//
//  ViewControllerWork.swift
//  testingVM
//
//  Created by Andy Cave on 8/5/16.
//  Copyright © 2016 Andy Cave. All rights reserved.
//

import UIKit

class ViewControllerWork: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet var textWorkType: UITextField!
    @IBOutlet var pickerWorkType: UIPickerView!
    
    var list = ["one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerWorkType.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return list.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.endEditing(true)
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        textWorkType.text = list[row]
        self.pickerWorkType.isHidden = true
    }

    func textFieldDidBeginEditing(_ textField: UITextField){ // became first responder
        if textField == textWorkType {
            self.pickerWorkType.isHidden = false
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) { // may be called if forced even if shouldEndEditing returns NO
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
