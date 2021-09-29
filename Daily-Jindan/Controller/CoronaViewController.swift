//
//  CoronaViewController.swift
//  Daily-Jindan
//
//  Created by GSM06 on 2021/09/29.
//

import UIKit
import SnapKit

class CoronaViewController: UIViewController{
    let infoView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        infoView.text = "※ 현재 학생의 건강상태는 가정 내에서 보호가 필요한 상황이므로 건강한 학교생활을 위해 잠시 등교하지 않도록 협조하여 주시기 바랍니다.※ 등교하지 않아도 학교에서는 출석으로 인정합니다. 학생의 발열, 호흡기증상 등 코로나19가 의심되는 증상이 있는 경우 콜센터(☏ 1339, 지역번호+120) 또는 관할보건소에 문의하고 선별진료소 방문 후 진료·검사받기 등 안내에 따라 주시기 바랍니다."
    }
}
