//
//  ViewController.swift
//  WeatherApp
//
//  Created by MacStudent on 2020-01-17.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addCity(_ sender: UIButton)
    {
        cities?.append(cityTxt.text!)
    }
    
}

