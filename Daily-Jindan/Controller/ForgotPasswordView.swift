//
//  ForgotPasswordView.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/18.
//

import UIKit
import SnapKit
import Then

class ForgotPasswordView: UINavigationController{
    //MARK: -Properties
    let bounds = UIScreen.main.bounds
    private let userName = UITextField().then {
        $0.backgroundColor = .white
        $0.textColor = .black
        $0.keyboardType = .asciiCapable
        $0.autocapitalizationType = UITextAutocapitalizationType.none
        $0.attributedPlaceholder = NSAttributedString(string: "아이디 입력", attributes:          [NSAttributedString.Key.foregroundColor : UIColor.gray])
        $0.borderStyle = .none
        $0.layer.cornerRadius = 5
        $0.clearButtonMode = .whileEditing
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.masksToBounds = false
        $0.layer.shadowOffset = CGSize(width: 0, height: 4)
        $0.layer.shadowRadius = 5
        $0.layer.shadowOpacity = 0.3
        $0.setLeftPaddingPoints(40)
    }
    private let okBtn = UIButton().then{
        $0.layer.cornerRadius = 5
        $0.setTitle("이메일 전송", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 17)
        $0.backgroundColor = UIColor(red: 0, green: 0.3647, blue: 1, alpha: 1.0)
    }
    private let logo = UILabel().then{
        $0.text = "비밀번호 찾기"
        $0.font = UIFont(name: "Helvetica-Bold", size: 25)
    }
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    //MARK: -Helpers
    func addSubview(){
        view.addSubview(userName)
        view.addSubview(okBtn)
        view.addSubview(logo)
    }
    func setLayout(){
        userName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.32)
            make.width.equalTo(bounds.width*0.8)
            make.height.equalTo(bounds.height*0.07)
        }
        okBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userName.snp.bottom).offset(bounds.height*0.02)
            make.width.equalTo(userName)
            make.height.equalTo(userName)
        }
        logo.snp.makeConstraints { make in
            make.top.equalTo(bounds.height*0.18)
            make.left.equalTo(userName)
        }
    }
    func configureUI(){
        addSubview()
        setLayout()
        view.backgroundColor = .white
    }
    //MARK: -Actions
}
