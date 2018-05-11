//
//  DetailViewController.swift
//  PassDataWithNotificationCenter
//
//  Created by Vu Ngoc Cong on 3/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func passData(_ sender: UIButton) {
        NotificationCenter.default.post(name: .nameData, object: nameTextField.text)
    }

}
