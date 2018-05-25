//
//  SecondViewController.swift
//  PingPongData
//
//  Created by Yasser on 2018-05-25.
//  Copyright © 2018 Yasser. All rights reserved.
//

import UIKit
protocol ReturnData {
    func returnDataToFirstPage (data : String)
}

class SecondViewController: UIViewController {
    var delegate : ReturnData?
    var secondData: String?
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondLabel.text = secondData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReturn(_ sender: Any) {
        delegate?.returnDataToFirstPage(data: secondTextField.text!)
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
