//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "LogoBlue")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let patientCodeLabel: UILabel = {
        let label = UILabel()
        label.text = "Mã số bệnh nhân / bác sĩ"
        label.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        return label
    }()
    
    private let patientCodeTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nhập mã số"
        textField.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupViewLogoImageView()
        setupViewPatientCodeLabel()
        setupViewPatientTextField()
        setupViewLineView()
        
    }
    
    private func setupViewLogoImageView() {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(78)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setupViewPatientCodeLabel() {
        view.addSubview(patientCodeLabel)
        patientCodeLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(42)
            make.top.equalTo(logoImage.snp.bottom).offset(42)
        }
    }
    
    private func setupViewPatientTextField() {
        view.addSubview(patientCodeTextField)
        patientCodeTextField.snp.makeConstraints { (make) in
            make.left.equalTo(patientCodeLabel)
            make.width.equalTo(291)
            make.height.equalTo(35)
            make.top.equalTo(patientCodeLabel.snp.bottom).offset(16)
        }
    }
    
    private func setupViewLineView() {
        view.addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(patientCodeTextField)
            make.height.equalTo(1)
            make.left.equalTo(patientCodeLabel)
            make.top.equalTo(patientCodeTextField.snp.bottom)
        }
    }
    
}
