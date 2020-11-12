//
//  ViewController.swift
//  CustomViewTestClass
//
//  Created by Andy Lochan on 10/30/20.
//  Copyright © 2020 Andy Lochan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numOfViews = 1
    
    @IBOutlet weak var myStackView: UIStackView!
    @IBOutlet weak var stackViewHeight: NSLayoutConstraint!
    @IBOutlet weak var contentViewHeight: NSLayoutConstraint!
    
    @IBAction func addViewPressed(_ sender: UIBarButtonItem) {
        numOfViews += 1
        reloadSubviews()
    }
    @IBAction func deleteViewPressed(_ sender: UIBarButtonItem) {
        if numOfViews > 0 {
            numOfViews -= 1
            reloadSubviews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSubViews()
    }
    
    func loadSubViews() {
        if numOfViews >= 1 {
            for num in 1 ... numOfViews {
                let customView = CustomView()
                
                customView.lblOutput.text = "Subview #\(num)"
                customView.heightAnchor.constraint(equalToConstant: 155).isActive = true //150+5 padding
                
                stackViewHeight.constant += 155
                contentViewHeight.constant += 155
                
                myStackView.addArrangedSubview(customView)
            }
        }
    }
    
    func reloadSubviews() {
        for view in myStackView.arrangedSubviews {
            view.removeFromSuperview()
            stackViewHeight.constant -= 155
            contentViewHeight.constant -= 155
        }
        loadSubViews()
    }

}

