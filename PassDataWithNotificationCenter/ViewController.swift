//
//  ViewController.swift
//  PassDataWithNotificationCenter
//
//  Created by Vu Ngoc Cong on 3/20/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(handlerResultNotification), name: .nameData, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func handlerResultNotification(_ notification: Notification) {
        if let text = notification.object as? String {
            nameLabel.text = text
        }
    }
    
}

