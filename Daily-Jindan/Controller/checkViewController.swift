//
//  nextView.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/17.
//

import UIKit
import SnapKit
import SimpleCheckbox

class checkViewController: UIViewController {
    // MARK: - Properties
    let resultView = resultViewController()
    let bounds = UIScreen.main.bounds
    let sv = UIScrollView()
    
    let logoView = UITextView()
    
    let infoView = UITextView()
    
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
    
    let no2 = UILabel()
    let yes2 = UILabel()
    
    let submitBtn = UIButton()
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addsubView()
        setLayout()
        configureUI()
    }
    // MARK: - Helpers
    func addsubView(){
        view.addSubview(sv)
        sv.addSubview(logoView)
        sv.addSubview(infoView)
        sv.addSubview(checkBox1Yes)
        sv.addSubview(checkBox1No)
        sv.addSubview(checkBox2Yes)
        sv.addSubview(checkBox2No)
        sv.addSubview(checkBox3Yes)
        sv.addSubview(checkBox3No)
        sv.addSubview(q1)
        sv.addSubview(q2)
        sv.addSubview(q3)
        sv.addSubview(no)
        sv.addSubview(yes)
        sv.addSubview(no1)
        sv.addSubview(yes1)
        sv.addSubview(no2)
        sv.addSubview(yes2)
        sv.addSubview(submitBtn)
    }
    func setLayout(){
        logoView.snp.makeConstraints { make in
            make.top.equalTo(bounds.height*0.04)
            make.width.equalToSuperview()
            make.height.equalTo(bounds.width*0.15)
        }
        sv.snp.makeConstraints { make in
            make.left.right.top.bottom.width.height.equalToSuperview()

        }
        infoView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.26)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.14)
        }
        q1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(bounds.height*0.42)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.16)
        }
        q2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(checkBox1No.snp.bottom).offset(bounds.height*0.08)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.12)
        }
        q3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(checkBox2No.snp.bottom).offset(bounds.height*0.08)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.162)
        }
        ///
        checkBox1No.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(q1.snp.bottom).offset(bounds.height*0.02)
            make.left.equalTo(bounds.width*0.1)
        }
        checkBox1Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(checkBox1No.snp.bottom).offset(bounds.height*0.015)
            make.left.equalTo(bounds.width*0.1)
        }
        ///
        checkBox2No.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(q2.snp.bottom).offset(bounds.height*0.02)
            make.left.equalTo(bounds.width*0.1)
        }
        checkBox2Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(checkBox2No.snp.bottom).offset(bounds.height*0.015)
            make.left.equalTo(bounds.width*0.1)
        }
        ///
        checkBox3No.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(q3.snp.bottom).offset(bounds.height*0.02)
            make.left.equalTo(bounds.width*0.1)
        }
        ///
        checkBox3Yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.04)
            make.width.equalTo(bounds.height*0.04)
            make.top.equalTo(checkBox3No.snp.bottom).offset(bounds.height*0.015)
            make.left.equalTo(bounds.width*0.1)
        }
        no.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox1No.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox1No.snp.right).offset(bounds.width*0.04)
        }
        yes.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(no.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox1No.snp.right).offset(bounds.width*0.04)
        }
        ///
        no1.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox2No.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox2No.snp.right).offset(bounds.width*0.04)
        }
        yes1.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(no1.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox2No.snp.right).offset(bounds.width*0.04)
        }
        ///
        no2.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.25)
            make.top.equalTo(checkBox3No.snp.bottom).offset(bounds.height*(-0.12))
            make.left.equalTo(checkBox3No.snp.right).offset(bounds.width*0.04)
        }
        yes2.snp.makeConstraints { make in
            make.height.equalTo(bounds.height*0.2)
            make.width.equalTo(bounds.width*0.6)
            make.top.equalTo(no2.snp.bottom).offset(bounds.height*(-0.145))
            make.left.equalTo(checkBox3No.snp.right).offset(bounds.width*0.04)
        }
        ///
        submitBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.07)
            make.top.equalTo(checkBox3Yes.snp.bottom).offset(bounds.height*0.03)
            
        }
    }
    func configureUI(){
        
        logoView.backgroundColor = UIColor(red: 0.5451, green: 0.3686, blue: 0.9294, alpha: 1.0)
        logoView.text = "건강상태 자가진단"
        //logoView.textAlignment = .natural
        logoView.font = UIFont(name: "Helvetica-Bold", size: 21)
        logoView.textColor = .white
        logoView.textContainerInset = UIEdgeInsets(top: 16, left: 17, bottom: 0, right: 0)
        logoView.isSelectable = false
        logoView.isEditable = false
        
        
        sv.backgroundColor = .white
        sv.translatesAutoresizingMaskIntoConstraints = false
        self.view = sv
        self.sv.contentSize = CGSize(width: bounds.width, height: bounds.height*1.4)
        
        checkBox1Yes.borderStyle = .circle
        checkBox1Yes.checkmarkStyle = .circle
        checkBox1No.borderStyle = .circle
        checkBox1No.checkmarkStyle = .circle
        
        checkBox2Yes.borderStyle = .circle
        checkBox2Yes.checkmarkStyle = .circle
        checkBox2No.borderStyle = .circle
        checkBox2No.checkmarkStyle = .circle
        
        checkBox3Yes.borderStyle = .circle
        checkBox3Yes.checkmarkStyle = .circle
        checkBox3No.borderStyle = .circle
        checkBox3No.checkmarkStyle = .circle
        
        checkBox1Yes.addTarget(self, action: #selector(checkBox1YesBtn), for: .valueChanged)
        checkBox1Yes.valueChanged = {ele in}
        checkBox1No.addTarget(self, action: #selector(checkBox1NoBtn), for: .valueChanged)
        checkBox1No.valueChanged = {ele in}
        
        checkBox2Yes.addTarget(self, action: #selector(checkBox2YesBtn), for: .valueChanged)
        checkBox2Yes.valueChanged = {ele in}
        checkBox2No.addTarget(self, action: #selector(checkBox2NoBtn), for: .valueChanged)
        checkBox2No.valueChanged = {ele in}
        
        checkBox3Yes.addTarget(self, action: #selector(checkBox3YesBtn), for: .valueChanged)
        checkBox3Yes.valueChanged = {ele in}
        checkBox3No.addTarget(self, action: #selector(checkBox3NoBtn), for: .valueChanged)
        checkBox3No.valueChanged = {ele in}
        
        submitBtn.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        
        infoView.textAlignment = .center
        infoView.text = """
        ※ 이 설문지는 코로나-19 감염예방을 위하여 학생의 건강 상태를 확인하는 내용입니다.
        ※ 설문에 성실하게 응답하여 주시기 바랍니다.
        ※ 코로나19가 의심되는 경우 진단검사를 받아주세요.
        """
        infoView.backgroundColor = UIColor(red: 0.9176, green: 0.9176, blue: 0.9176, alpha: 1.0)
        infoView.textContainerInset = UIEdgeInsets(top: 23, left: 5, bottom: 0, right: 0)
        infoView.font = UIFont(name: "Helvetica", size: 16)
        infoView.textAlignment = .left
        infoView.isEditable = false
        infoView.isSelectable = false
        
        q1.font = UIFont(name: "Helvetica", size: 17)
        q1.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q1.text = """
        1. 학생 본인이 코로나19가 의심되는 아래의 임상증상이 있나요?
        (주요 임상증상) 발열 (37.5℃ 이상), 기침, 호흡곤란, 오한, 근육통, 두통, 인후통, 후각·미각 소실 (단, 코로나19와 관계없이 평소의 기저질환으로 인한 증상인 경우는 ‘아니오’ 선택)
        """
        q1.isSelectable = false
        q1.isEditable = false
        
        q2.font = UIFont(name: "Helvetica", size: 17)
        q2.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q2.text = """
        2. 학생 본인 또는 동거인이 코로나19 진단검사를 받고 그 결과를 기다리고 있나요?
        ※ ① 직업특성, 또는 ② 대회참여 등 선제적 예방 목적의 진단검사인 경우는 ‘아니오’ 선택
        """
        q2.isSelectable = false
        q2.isEditable = false
        
        q3.font = UIFont(name: "Helvetica", size: 17)
        q3.backgroundColor = UIColor(red: 0.8863, green: 1, blue: 0.9686, alpha: 1.0)
        q3.text = """
        3. 학생 본인 또는 동거인이 방역당국에 의해 현재 자가격리가 이루어지고 있나요?
        ※ 동거인이 자가격리중인 경우, ① 매 등교 희망일로부터 2일 이내 진단검사 결과가 음성인 경우 또는 ② 격리 통지를 받은 ‘즉시’ 자가격리된 동거인과 접촉이 없었던 경우는 ‘아니오’ 선택
        """
        q3.isSelectable = false
        q3.isEditable = false
        
        no.text = "아니요"
        yes.text = "예"
        no.textColor = .gray
        yes.textColor = .gray
        
        no1.text = "아니요"
        yes1.text = "예"
        no1.textColor = .gray
        yes1.textColor = .gray
        
        no2.text = "아니요"
        yes2.text = "예"
        no2.textColor = .gray
        yes2.textColor = .gray
        
        submitBtn.setTitle("제출 / Submit", for: .normal)
        submitBtn.setTitleColor(.white, for: .normal)
        submitBtn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 17)
        submitBtn.backgroundColor = UIColor(red: 0, green: 0.3647, blue: 1, alpha: 1.0)
    }
    // MARK: - Actions
    @objc func checkBox1NoBtn(sender: Checkbox){
        print("Q1 No Tapped")
        checkBox1No.isChecked = true
        if (checkBox1Yes.isChecked == true){
            checkBox1Yes.isChecked = false
        }
    }
    @objc func checkBox1YesBtn(sender: Checkbox){
        print("Q1 Yes Tapped")
        checkBox1Yes.isChecked = true
        if (checkBox1No.isChecked == true){
            checkBox1No.isChecked = false
        }
    }
    @objc func checkBox2NoBtn(sender: Checkbox){
        print("Q2 No Tapped")
        checkBox2No.isChecked = true
        if (checkBox2Yes.isChecked == true){
            checkBox2Yes.isChecked = false
        }
    }
    @objc func checkBox2YesBtn(sender: Checkbox){
        print("Q2 Yes Tapped")
        checkBox2Yes.isChecked = true
        if (checkBox2No.isChecked == true){
            checkBox2No.isChecked = false
        }
    }
    @objc func checkBox3NoBtn(){
        print("Q3 No Tapped")
        checkBox3No.isChecked = true
        if (checkBox3Yes.isChecked == true){
            checkBox3Yes.isChecked = false
        }
    }
    @objc func checkBox3YesBtn(){
        print("Q3 Yes Tapped")
        checkBox3Yes.isChecked = true
        if (checkBox3No.isChecked == true){
            checkBox3No.isChecked = false
        }
    }
    @objc func submitTapped(){
        print("submit Button Tapped")
        if(checkBox1No.isChecked == false && checkBox1Yes.isChecked == false){
            let alert = UIAlertController(title: "오류", message: "1번 설문내용을 입력해주세요", preferredStyle: UIAlertController.Style.alert)
            let defaultAction = UIAlertAction(title: "확인", style: .destructive, handler : nil)
            alert.addAction(defaultAction)
            self.present(alert, animated: false, completion: nil)
        }
        else if (checkBox2Yes.isChecked == false && checkBox2No.isChecked == false){
            let alert = UIAlertController(title: "오류", message: "2번 설문내용을 입력해주세요", preferredStyle: UIAlertController.Style.alert)
            let defaultAction = UIAlertAction(title: "확인", style: .destructive, handler : nil)
            alert.addAction(defaultAction)
            self.present(alert, animated: false, completion: nil)
        }
        
        else if (checkBox1No.isChecked == true || checkBox1Yes.isChecked == true){
            resultView.modalPresentationStyle = .fullScreen
            self.present(self.resultView, animated: true, completion: nil)
        }
        
    }
}

