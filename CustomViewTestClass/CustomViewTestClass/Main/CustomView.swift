//
//  CustomView.swift
//  CustomViewTestClass
//
//  Created by Andy Lochan on 10/30/20.
//  Copyright © 2020 Andy Lochan. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var lblOutput: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    func commonInit() {
        let viewFromXib = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
    
}
