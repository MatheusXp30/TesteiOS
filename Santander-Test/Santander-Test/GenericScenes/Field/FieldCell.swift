//
//  FieldCell.swift
//  Santander-Test
//
//  Created by Matheus Ribeiro on 14/05/19.
//  Copyright © 2019 Matheus Ribeiro. All rights reserved.
//

import UIKit

class FieldCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lineView: UIView!
    
    static let reuseIdentifier = "FieldCell"
    
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
        label.textColor = UIColor.lightGrayColor
    }
    
    private func didSetViewModel() {
        guard let viewModel = viewModel else { return }
        label.text = viewModel.message ?? "-"
    }

}

extension FieldCell {
    struct ViewModel {
        let message: String?
    }
}