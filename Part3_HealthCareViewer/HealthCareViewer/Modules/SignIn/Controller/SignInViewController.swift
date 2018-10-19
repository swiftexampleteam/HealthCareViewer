//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
    
    //MARK: Properties
    
    //MARK: UI ELements
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resource.Images.blueLogoImage
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let patientInputView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.patientCodeTitle
        view.placeHodler = Resource.Title.SignInAndSignUp.patientCodePlaceHolder
        return view
    }()
    
    private let passwordInputView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.passwordTitle
        view.placeHodler = Resource.Title.SignInAndSignUp.passwordPlaceholder
        view.isSecureTextEntry = true
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.accentColor
        button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        button.setTitle(Resource.Title.SignInAndSignUp.signIn.uppercased(), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize)
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        button.setTitle(Resource.Title.SignInAndSignUp.signUp.uppercased(), for: .normal)
        button.setTitleColor(Theme.shared.accentColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize)
        button.addTarget(self, action: #selector(signUpButtontapped), for: .touchUpInside)
        return button
    }()
    
    //MARK: View LifeCycle
    
    override func initialize() {
        super.initialize()
        setupViewLogoImageView()
        setupViewPatientInputView()
        setupViewPasswordInputView()
        setupViewSignInButton()
        setupViewSignUpButton()
    }
    
    //MARK: UI Action
    
    @objc func signInButtonTapped() {
        print("Sign In Tapped")
    }
    
    @objc func signUpButtontapped() {
         print("Sign Up Tapped")
    }
    
    //MARK: SetupView
    
    private func setupViewLogoImageView() {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_60)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setupViewPatientInputView() {
        view.addSubview(patientInputView)
        patientInputView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_42)
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(logoImage.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
        }
    }
    
    private func setupViewPasswordInputView() {
        view.addSubview(passwordInputView)
        passwordInputView.snp.makeConstraints { (make) in
            make.width.left.equalTo(patientInputView)
            make.top.equalTo(patientInputView.snp.bottom).offset(Dimension.shared.largeVerticalMargin_32)
        }
    }
    
    private func setupViewSignInButton() {
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.defaultWidthButton)
            make.height.equalTo(Dimension.shared.defaultHeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordInputView.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
        }
    }
    
    private func setupViewSignUpButton() {
        view.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { (make) in
            make.centerX.width.height.equalTo(signInButton)
            make.top.equalTo(signInButton.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
        }
    }
    
}



