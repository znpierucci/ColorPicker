//
//  ViewController.swift
//  ColorPicker
//
//  Created by Zachary Pierucci on 10/6/18.
//  Copyright © 2018 Zachary Pierucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    struct Colors {
        var color: String
        var uicolor: UIColor
    }
    
    let colors = [Colors.init(color: "Red", uicolor: UIColor.red), Colors.init(color: "Orange", uicolor: UIColor.orange), Colors.init(color: "Yellow", uicolor: UIColor.yellow), Colors.init(color: "Green", uicolor: UIColor.green), Colors.init(color: "Blue", uicolor: UIColor.blue), Colors.init(color: "Purple", uicolor: UIColor.purple)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorPickerView.delegate = self
        colorPickerView.dataSource = self
        
        colorLabel.text = colors[0].color
        view.backgroundColor = colors[0].uicolor
        colorPickerView.selectedRow(inComponent: 0)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        colorLabel.text = colors[row].color
        view.backgroundColor = colors[row].uicolor
        return colors[row].color
    }
    
}

