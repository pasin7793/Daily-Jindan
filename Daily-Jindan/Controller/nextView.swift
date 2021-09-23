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
    // MARK: - Properties
    let bounds = UIScreen.main.bounds
    let sv = UIScrollView()
    
    let q1 = UITextView()
    let q2 = UITextView()
    let q3 = UITextView()
    
    let checkBox1Yes = Checkbox()
    let checkBox1No = Checkbox()
    
    let checkBox2Yes = Checkbox()
    let checkBox2No = Checkbox()
    
    let checkBox3Yes = Checkbox()
    let checkBox3No = Checkbox()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addsubView()
        setLayout()
        configureUI()
    }
    // MARK: - Helpers
    func addsubView(){
        view.addSubview(checkBox1Yes)
        view.addSubview(checkBox1No)
        view.addSubview(checkBox2Yes)
        view.addSubview(checkBox2No)
        view.addSubview(checkBox3Yes)
        view.addSubview(checkBox3No)
        view.addSubview(q1)
        view.addSubview(q2)
        view.addSubview(q3)
    }
    func setLayout(){
        checkBox1Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(bounds.height*0.3)
            make.left.equalTo(bounds.width*0.2)
        }
        q1.snp.makeConstraints { make in
            make.top.equalTo(bounds.height*0.3)
            make.left.equalTo(bounds.width*0.2)
            make.width.equalTo(bounds.width*0.8)
            make.height.equalTo(bounds.height*0.2)
        }
    }
    func configureUI(){
        view.backgroundColor = .white
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .white
        sv.isPagingEnabled = true
        
        checkBox1Yes.borderStyle = .circle
        checkBox1Yes.checkmarkStyle = .circle
        
        q1.backgroundColor = .orange
        q1.text = "1. 학생 본인이 코로나19가 의심되는 아래의 임상증상*이 있나요?* (주요 임상증상) 발열 (37.5℃ 이상), 기침, 호흡곤란, 오한, 근육통, 두통, 인후통, 후각·미각 소실 (단, 코로나19와 관계없이 평소의 기저질환으로 인한 증상인 경우는 ‘아니오’ 선택)"
        
    }
    
    
    // MARK: - Actions
    @objc func tappedButton(){
        
    }
}

