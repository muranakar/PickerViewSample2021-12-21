//
//  ViewController.swift
//  PickerViewSample2021-12-21
//
//  Created by 村中令 on 2021/12/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let fimNum = ["1", "2", "3", "4", "5", "6", "7"]

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var textField: UITextField! {
        didSet {
            textField.inputView = pickerView
        }
    }
    var pickerView = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView {
            label.text = fimNum[row]
        }
        textField.resignFirstResponder()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        fimNum.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        fimNum[row]
    }
}
