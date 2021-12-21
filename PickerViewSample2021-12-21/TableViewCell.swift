//
//  TableViewCell.swift
//  PickerViewSample2021-12-21
//
//  Created by 村中令 on 2021/12/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!{
        didSet {
            textField.inputView = pickerView
        }
    }
    let pickerView = UIPickerView()
    
}
