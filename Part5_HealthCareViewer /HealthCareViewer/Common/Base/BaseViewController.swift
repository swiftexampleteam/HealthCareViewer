//
//  BaseViewController.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

protocol ReusableView {
    func initialize()
}

public class BaseViewController: UIViewController, ReusableView {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        initialize()
    }
    
    public func initialize() {}
    
}
