//
//  SecondViewController.swift
//  Singleton
//
//  Created by 又来薫 on 2017/07/02.
//  Copyright © 2017年 kaoru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!

    let singleton :Singleton =  Singleton.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        guard
            let title = textField.text,
            let content = textView.text else { return }
        singleton.saveTitle(title: title)
        singleton.saveContents(content: content)

    }

    @IBAction func tappedLoad(_ sender: UIButton) {
        textField.text = singleton.getTitle()
        textView.text = singleton.getContents()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


