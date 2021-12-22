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
    private let fimNumber = [Int](1...7)

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        pickerView.delegate = self
        pickerView.dataSource = self

    }
}


extension TableViewCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView {
            textField.text = fimNumber.map { String($0) }[row]
        }

        textField.resignFirstResponder()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        fimNumber.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let string = fimNumber.map { String($0) }[row]
        return string
    }

}
