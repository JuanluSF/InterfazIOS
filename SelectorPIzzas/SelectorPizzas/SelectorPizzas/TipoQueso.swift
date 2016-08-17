//
//  TipoQueso.swift
//  SelectorPizzas
//
//  Created by Juan Luis on 17/8/16.
//  Copyright © 2016 Juan Luis. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var mPickerQueso: UIPickerView!
    
    var pickerData : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.mPickerQueso.delegate = self
        self.mPickerQueso.dataSource = self
        
        pickerData = ["Mozzarela", "Cheddar", "Parmesano", "Sin queso"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }


}
