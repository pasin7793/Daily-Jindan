//
//  resultViewController.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/29.
//

import UIKit
import SnapKit
import Then
import SimpleCheckbox

class ResultViewController: UIViewController{
    //MARK: -Properties
    let bounds = UIScreen.main.bounds
    let now = Date()
    let date: DateFormatter = {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ko_KR")
        df.timeZone = TimeZone(abbreviation: "KST")
        df.dateFormat = "(yyyy-MM-dd) 자가진단 참여를 완료하였습니다."
        return df
    }()
    private let infoView = UILabel().then {
        //$0.text = "자가진단 참여를 완료하였습니다."
        $0.font = UIFont(name: "Helvetica", size: 17)
        $0.textAlignment = .center
        $0.textColor = UIColor.gray
    }
    private let logoView = UITextView().then {
        $0.backgroundColor = UIColor(red: 0.5451, green: 0.3686, blue: 0.9294, alpha: 1.0)
        $0.text = "건강상태 자가진단"
        $0.font = UIFont(name: "Helvetica-Bold", size: 21)
        $0.textColor = .white
        $0.textContainerInset = UIEdgeInsets(top: 16, left: 17, bottom: 0, right: 0)
        $0.isSelectable = false
        $0.isEditable = false
    }
    let checkedLogo = UIImageView(image: UIImage(systemName: "person.fill.checkmark"))
    
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    //MARK: -Helpers
    func addsubview(){
        view.addSubview(infoView)
        view.addSubview(logoView)
        view.addSubview(checkedLogo)
    }
    func setLayout(){
        logoView.snp.makeConstraints { make in
            make.top.equalTo(bounds.height*0.08)
            make.width.equalToSuperview()
            make.height.equalTo(bounds.width*0.15)
        }
        infoView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            //make.top.equalTo(bounds.height*0.26)
            make.top.equalTo(logoView.snp.bottom).offset(bounds.height*0.1)
            make.width.equalTo(bounds.width*0.9)
            make.height.equalTo(bounds.height*0.04)
        }
        checkedLogo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(infoView.snp.bottom).offset(bounds.height*0.15)
            make.width.equalTo(bounds.width*0.32)
            make.height.equalTo(bounds.height*0.1)

        }
    }
    func configureUI(){
        addsubview()
        setLayout()
        view.backgroundColor = .white
        print("Time: \(now)")
        infoView.text = date.string(from: now)
    }
    //MARK: Actions
    
}
