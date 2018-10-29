//
//  TextFieldWithTitle.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

public class TextFieldWithTitle: BaseUIView {
    
    //MARK: Properties
    
    public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    public var placeHodler: String? {
        didSet {
            textField.placeholder = placeHodler
        }
    }
    
    public var isSecureTextEntry: Bool = false {
        didSet {
            textField.isSecureTextEntry = isSecureTextEntry
        }
    }
    
    //MARK: UI Elements
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Theme.shared.primaryColor
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.textColor = Theme.shared.primaryColor
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineDeviderColor
        return view
    }()
    
    //MARK: Object LifeCycle
    
    public override func initialize() {
        setupViewTitleLabel()
        setupViewTextField()
        setupViewLineView()
    }
    
    //MARK: SetupView
    
    private func setupViewTitleLabel() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    private func setupViewTextField() {
        addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.width.equalToSuperview()
            make.height.equalTo(Dimension.shared.defaultHeightTextField)
            make.top.equalTo(titleLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
        }
    }
    
    private func setupViewLineView() {
       addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(textField)
            make.height.equalTo(Dimension.shared.heightLineDivider)
            make.left.equalTo(titleLabel)
            make.top.equalTo(textField.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
    
}

