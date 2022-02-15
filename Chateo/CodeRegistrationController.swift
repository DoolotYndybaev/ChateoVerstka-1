//
//  CodeRegistrView.swift
//  Chateo
//
//  Created by Doolot on 15/2/22.
//


import Foundation
import UIKit
import SnapKit

class CodeRegistrationController: UIViewController {
    
    private lazy var illustrationText: UILabel = {
        let view = UILabel()
        view.text = """
            Enter Code
            """
        view.numberOfLines = 0
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 25.0)
        return view
    }()
    private lazy var privacyLabel: UILabel = {
        let view = UILabel()
        view.text = """
        We have sent you an SMS with the code to +62 1309 - 1710 - 1920
        """
        view.numberOfLines = 0
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 15)
        view.textColor = UIColor.black
        return view
    }()
    private lazy var republicImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Pin")
        return view
    }()
    private lazy var continueButton: UIButton = {
        let view = UIButton()
        view.setTitleColor(.white, for: .normal)
        view.setTitle("Continue", for: .normal)
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(red: 15/255, green: 44/255, blue: 218/255, alpha: 1)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    private lazy var keyBoardImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Keyboard")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundWindow()
        setupViews()
    }
    func backgroundWindow(){
        view.backgroundColor = .systemBackground
    }
    func setupViews(){
        view.addSubview(illustrationText)
        illustrationText.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-230)
            make.left.equalToSuperview().offset(80)
            make.right.equalToSuperview().offset(-80)
        }
        view.addSubview(privacyLabel)
        privacyLabel.snp.makeConstraints { make in
            make.top.equalTo(illustrationText).offset(50)
            make.left.equalTo(illustrationText.snp.left)
            make.right.equalTo(illustrationText.snp.right)
        }
        view.addSubview(republicImage)
        republicImage.snp.makeConstraints{ make in
            make.top.equalTo(privacyLabel.snp.bottom).offset(40)
            make.left.equalTo(privacyLabel.snp.left)
        }
        view.addSubview(continueButton)
        continueButton.snp.makeConstraints { make in
            make.top.equalTo(republicImage.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.height.equalToSuperview().dividedBy(15)
        }
        view.addSubview(keyBoardImage)
        keyBoardImage.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Continue"{
            navigationController?.pushViewController(ProfileSaveController(), animated: true)
        }
    }
}
