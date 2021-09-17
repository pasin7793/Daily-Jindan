//
//  LogInView.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/16.
//

import UIKit
import SnapKit
import Then
import Firebase
import FirebaseDatabase

class LogInView: UIViewController{
    
    let mainView = UIView()
    let bound = UIScreen.main.bounds
    let logo = UILabel()
    let userName = UITextField()
    let password = UITextField()
    let toEnter = UIButton()
    
    let secondView = nextView()
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*if Auth.auth().currentUser != nil {
            userName.placeholder = "이미 로그인 된 상태입니다."
            password.placeholder = "이미 로그인 된 상태입니다."
            toEnter.setTitle("이미 로그인 된 상태입니다.", for: .normal)
        }*/
        
        view.addSubview(mainView)
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
            gradientLayer.colors = [
                UIColor(red: 0.5451, green: 0.3686, blue: 0.9294, alpha: 1.0).cgColor,
                UIColor(red: 0, green: 0.8157, blue: 0.8863, alpha: 1.0).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.backgroundColor = .white
        
    mainView.layer.addSublayer(gradientLayer)
        mainView.snp.makeConstraints{ make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(bound.height*0.74)
            make.top.equalToSuperview()
        }
        
        
        logo.text = "LogIn Test"
        view.addSubview(logo)
        logo.textColor = .white
        logo.font = UIFont(name: "Helvetica-Bold", size: 42)
        logo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bound.height*0.15)
        }
        
        userName.backgroundColor = .white
        userName.textColor = .black
        userName.keyboardType = .asciiCapable
        userName.autocapitalizationType = UITextAutocapitalizationType.none
        userName.attributedPlaceholder = NSAttributedString(string: "이메일 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        userName.borderStyle = .none
        userName.layer.cornerRadius = 25
        userName.clearButtonMode = .whileEditing
        userName.layer.shadowColor = UIColor.black.cgColor
        userName.layer.masksToBounds = false
        userName.layer.shadowOffset = CGSize(width: 0, height: 4)
        userName.layer.shadowRadius = 5
        userName.layer.shadowOpacity = 0.3
        userName.setLeftPaddingPoints(30)
        view.addSubview(userName)
        userName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bound.height*0.32)
            make.width.equalTo(bound.width*0.8)
            make.height.equalTo(bound.height*0.07)
        }
        
        password.backgroundColor = .white
        password.textColor = .black
        password.keyboardType = .asciiCapable
        password.autocapitalizationType = UITextAutocapitalizationType.none
        password.attributedPlaceholder = NSAttributedString(string: "비밀번호 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        password.borderStyle = .none
        password.layer.cornerRadius = 25
        password.clearButtonMode = .whileEditing
        password.layer.shadowColor = UIColor.black.cgColor
        password.layer.masksToBounds = false
        password.layer.shadowOffset = CGSize(width: 0, height: 4)
        password.layer.shadowRadius = 5
        password.layer.shadowOpacity = 0.3
        password.setLeftPaddingPoints(30)
        
        view.addSubview(password)
        password.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userName.snp.bottom).offset(bound.height*0.02)
            make.height.width.equalTo(userName)
        }
        
        view.addSubview(toEnter)
        toEnter.backgroundColor = .white
        toEnter.setTitle("확인", for: .normal)
        //toEnter.layer.borderColor =  UIColor(red: 0.5451, green: 0.3686, blue: 0.9294, alpha: 1.0).cgColor
        //toEnter.layer.borderWidth = 3
        toEnter.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        toEnter.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 20)
        toEnter.layer.cornerRadius = 25
        toEnter.layer.masksToBounds = true
        toEnter.layer.shadowColor = UIColor.black.cgColor
        toEnter.layer.masksToBounds = false
        toEnter.layer.shadowOffset = CGSize(width: 0, height: 4)
        toEnter.layer.shadowRadius = 5
        toEnter.layer.shadowOpacity = 0.3
        toEnter.addTarget(self, action: #selector(buttonClicked), for:.touchUpInside)
        
        toEnter.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(password.snp.bottom).offset(bound.height*0.1)
            make.height.equalTo(userName)
            make.width.equalTo(bound.width*0.48)
        }
    }
    @objc func buttonClicked(_ button: UIButton){
        Auth.auth().signIn(withEmail: userName.text!, password: password.text!) { (user, error) in
                    if user != nil{
                        print("login success")
                        self.secondView.modalPresentationStyle = .fullScreen
                        self.secondView.modalTransitionStyle = .crossDissolve
                        self.present(self.secondView, animated: true, completion: nil)
                    }
                    else{
                        print("login fail")
                    }
            UIView.animate(withDuration: 1.5) {
                button.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            };
            UIView.animate(withDuration: 0.2) {
                button.backgroundColor = .white
            }
        }
    };
    
    
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
extension UITextField {
  func addLeftPadding() {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
    func addleftimage(image:UIImage) {
            let leftimage = UIImageView(frame: CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
            leftimage.image = image
            self.leftView = leftimage
            self.leftViewMode = .always
        }
}
