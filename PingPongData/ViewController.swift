//
//  ViewController.swift
//  PingPongData
//
//  Created by Yasser on 2018-05-25.
//  Copyright © 2018 Yasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ReturnData {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnRed(_ sender: Any) {
        view.backgroundColor = UIColor.red
    }
    @IBAction func sendData(_ sender: Any) {
        performSegue(withIdentifier: "sendData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendData" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.secondData = firstTextField.text!
            secondVC.delegate = self
        }
    }
    func returnDataToFirstPage(data: String) {
        firstLabel.text = data
    }
}

