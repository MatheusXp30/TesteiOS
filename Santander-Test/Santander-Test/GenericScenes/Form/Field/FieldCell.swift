//
//  FieldCell.swift
//  Santander-Test
//
//  Created by Matheus Ribeiro on 14/05/19.
//  Copyright © 2019 Matheus Ribeiro. All rights reserved.
//

import UIKit

protocol FieldCellDelegate: class {
    func textDidChange(for indexPath: IndexPath, text: String, typeField: TypeField)
}

class FieldCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    static let reuseIdentifier = "FieldCell"
    
    weak var delegate: FieldCellDelegate?
    
    var viewModel: FieldCell.ViewModel? {
        didSet {
            didSetViewModel()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLayout()
    }
    
    private func configureLayout() {
        label.textColor = UIColor.getColorDarkGray
        lineView.backgroundColor = UIColor.getColorLightGray
    }
    
    private func didSetViewModel() {
        guard let viewModel = viewModel else { return }
        label.text = viewModel.message ?? "-"
        topConstraint.constant = CGFloat(viewModel.topSpace ?? 8)
        if viewModel.typeField == .telNumber {
            textField.keyboardType = .decimalPad
        }
    }
    
    @IBAction func textFieldDidChange(_ sender: Any) {
        guard
            let indexPath = viewModel?.indexPath,
            let text = textField.text,
            let typeField = viewModel?.typeField
        else { return }
        
        if typeField == .telNumber {
            let convertedText = text.convertToPhoneNumberFormat() ?? text
            textField.text = convertedText
            delegate?.textDidChange(for: indexPath, text: convertedText, typeField: typeField)
        } else {
            delegate?.textDidChange(for: indexPath, text: text, typeField: typeField)
        }
    }
    
}

extension FieldCell {
    struct ViewModel {
        let message: String?
        let topSpace: Int?
        let typeField: TypeField?
        let indexPath: IndexPath
    }
}
