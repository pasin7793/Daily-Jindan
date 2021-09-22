//
//  nextView.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/17.
//

import UIKit
import SnapKit
import SimpleCheckbox

class nextView: UIViewController{
    let test = UILabel()
    let bounds = UIScreen.main.bounds
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        test.text = "최형우"
        view.addSubview(test)
        test.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.3)
        }
        
    }
}
