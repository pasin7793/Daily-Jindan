//
//  CoronaViewController.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/29.
//

import UIKit
import SnapKit
import Then

class CoronaViewController: UIViewController{
    //MARK: -Properties
    let now = Date()
    let date =  DateFormatter().then {
        $0.locale = Locale(identifier: "ko_KR")
        $0.timeZone = TimeZone(abbreviation: "KST")
        $0.dateFormat = "(yyyy-MM-dd) 자가진단 참여를 완료하였습니다."
    }
    private let infoView = UITextView().then{
        $0.font = UIFont(name: "Helvetica", size: 19)
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
    private let coronaView = UITextView().then {
        $0.backgroundColor = UIColor(red: 0.7569, green: 0.8588, blue: 1, alpha: 1.0)
        $0.isSelectable = false
        $0.isEditable = false
        $0.font = UIFont(name: "Helvetica-Bold", size: 14)
        $0.textColor = UIColor.gray
        $0.textContainerInset = UIEdgeInsets(top: 12, left: 10, bottom: 0, right: 0)
        $0.textAlignment = .left
        $0.text = "※ 현재 학생의 건강상태는 가정 내에서 보호가 필요한 상황이므로 건강한 학교생활을 위해 잠시 등교하지 않도록 협조하여 주시기 바랍니다.※ 등교하지 않아도 학교에서는 출석으로 인정합니다. 학생의 발열, 호흡기증상 등 코로나19가 의심되는 증상이 있는 경우 콜센터(☏ 1339, 지역번호+120) 또는 관할보건소에 문의하고 선별진료소 방문 후 진료·검사받기 등 안내에 따라 주시기 바랍니다."
    }
    let unCheckedLogo = UIImageView(image:UIImage(systemName:"checkmark.circle.trianglebadge.exclamationmark"))
    let bounds = UIScreen.main.bounds
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        setLayout()
        view.backgroundColor = .white
        infoView.text = date.string(from: now)
    }
    //MARK: -Helpers
    func addSubview(){
        view.addSubview(infoView)
        view.addSubview(logoView)
        view.addSubview(coronaView)
        view.addSubview(unCheckedLogo)
    }
    func setLayout(){
        logoView.snp.makeConstraints { make in
            make.top.equalTo(bounds.height*0.08)
            make.width.equalToSuperview()
            make.height.equalTo(bounds.width*0.15)
        }
        infoView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoView.snp.bottom).offset(bounds.height*0.1)
            make.width.equalTo(bounds.width*1.2)
            make.height.equalTo(bounds.height*0.04)
        }
        unCheckedLogo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(infoView.snp.bottom).offset(bounds.height*0.15)
            make.width.equalTo(bounds.width*0.26)
            make.height.equalTo(bounds.height*0.1)
        }
        coronaView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(unCheckedLogo.snp.bottom).offset(bounds.height*0.15)
            make.width.equalTo(bounds.width*0.87)
            make.height.equalTo(bounds.height*0.16)
        }
    }
    //MARK: Actions
}
