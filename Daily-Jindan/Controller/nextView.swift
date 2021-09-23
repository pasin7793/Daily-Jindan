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
    
    let temperature1 = UILabel()
    let temperature2 = UILabel()
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
        view.addSubview(temperature1)
        view.addSubview(temperature2)
    }
    func setLayout(){
        checkBox1Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(q1.snp.bottom).offset(bounds.height*0.02)
            make.left.equalTo(bounds.width*0.1)
        }
        checkBox1No.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(checkBox1Yes.snp.bottom).offset(bounds.height*0.015)
            make.left.equalTo(bounds.width*0.1)
        }
        q1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.35)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.14)
        }
        temperature1.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox1Yes.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox1Yes.snp.right).offset(bounds.width*0.04)
        }
        temperature2.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(temperature1.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox1Yes.snp.right).offset(bounds.width*0.04)
        }
    }
    func configureUI(){
        view.backgroundColor = .white
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .white
        sv.isPagingEnabled = true
        
        checkBox1Yes.borderStyle = .circle
        checkBox1Yes.checkmarkStyle = .circle
        
        checkBox1No.borderStyle = .circle
        checkBox1No.checkmarkStyle = .circle
        
        q1.font = UIFont(name: "Helvetica", size: 17)
        q1.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q1.text = "1. 학생 본인이 코로나19가 의심되는 아래의 임상증상이 있나요? (주요 임상증상) 발열 (37.5℃ 이상), 기침, 호흡곤란, 오한, 근육통, 두통, 인후통, 후각·미각 소실 (단, 코로나19와 관계없이 평소의 기저질환으로 인한 증상인 경우는 ‘아니오’ 선택)"
        q1.isSelectable = false
        q1.isEditable = false
        
        temperature1.text = "37.5℃ 미만"
        temperature2.text = "37.5℃ 이상 및 열감지"
        temperature1.textColor = .gray
        temperature2.textColor = .gray
    }
    
    
    // MARK: - Actions
    @objc func tappedButton(){
        
    }
}

