//
//  AddViewController.swift
//  SimpleCounter
//
//  Created by 尾高文香 on 2016/07/04.
//  Copyright © 2016年 com.odakaayaka. All rights reserved.
//

import UIKit

class AddViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet var doTextField: UITextField!
    
    var listArray: [AnyObject] = []
    var index: Int = 0
    let saveData = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        if saveData.arrayForKey("DO") != nil{
            listArray = saveData.arrayForKey("DO")!
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textFieldDidEndEditing(textField: UITextField) {
//        listArray.append(self.doTextField.text!)
//        saveData.setObject(listArray, forKey: "DO")
//        NSUserDefaults.standardUserDefaults().synchronize()
//    }
    
    @IBAction func doneBtn(sender: UIBarButtonItem){
        listArray.append(self.doTextField.text!)
        saveData.setObject(listArray, forKey: "DO")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let tableViewController = segue.destinationViewController as? TableViewController
            tableViewController!.index = self.index
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
