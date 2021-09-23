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
    
    let no = UILabel()
    let yes = UILabel()
    
    let no1 = UILabel()
    let yes1 = UILabel()
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
        view.addSubview(no)
        view.addSubview(yes)
        view.addSubview(yes1)
        view.addSubview(no1)
    }
    func setLayout(){
        q1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.35)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.14)
        }
        q2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(checkBox1Yes.snp.bottom).offset(bounds.height*0.08)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.12)
        }
        ///
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
        ///
        checkBox2Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(q2.snp.bottom).offset(bounds.height*0.02)
            make.left.equalTo(bounds.width*0.1)
        }
        checkBox2No.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(checkBox2Yes.snp.bottom).offset(bounds.height*0.015)
            make.left.equalTo(bounds.width*0.1)
        }
        ///
        no.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox1Yes.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox1Yes.snp.right).offset(bounds.width*0.04)
        }
        yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(no.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox1Yes.snp.right).offset(bounds.width*0.04)
        }
        ///
        no1.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox2Yes.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox2Yes.snp.right).offset(bounds.width*0.04)
        }
        yes1.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(no1.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox2Yes.snp.right).offset(bounds.width*0.04)
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
        
        checkBox2Yes.borderStyle = .circle
        checkBox2Yes.checkmarkStyle = .circle
        checkBox2No.borderStyle = .circle
        checkBox2No.checkmarkStyle = .circle
        
        q1.font = UIFont(name: "Helvetica", size: 17)
        q1.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q1.text = "1. 학생 본인이 코로나19가 의심되는 아래의 임상증상이 있나요? (주요 임상증상) 발열 (37.5℃ 이상), 기침, 호흡곤란, 오한, 근육통, 두통, 인후통, 후각·미각 소실 (단, 코로나19와 관계없이 평소의 기저질환으로 인한 증상인 경우는 ‘아니오’ 선택)"
        q1.isSelectable = false
        q1.isEditable = false
        
        q2.font = UIFont(name: "Helvetica", size: 17)
        q2.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q2.text = "2. 학생 본인 또는 동거인이 코로나19 진단검사를 받고 그 결과를 기다리고 있나요?※ ① 직업특성, 또는 ② 대회참여 등 선제적 예방 목적의 진단검사인 경우는 ‘아니오’ 선택"
        q2.isSelectable = false
        q2.isEditable = false
        
        no.text = "아니요"
        yes.text = "예"
        no.textColor = .gray
        yes.textColor = .gray
        
        no1.text = "아니요"
        yes1.text = "예"
        no1.textColor = .gray
        yes1.textColor = .gray
    }
    // MARK: - Actions
    @objc func tappedButton(){
        
    }
}

