//
//  ViewController.swift
//  Chateo
//
//  Created by Doolot on 15/2/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var illustrationImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Illustration")
        return view
    }()
    private lazy var illustrationText: UILabel = {
        let view = UILabel()
        view.text = """
            Connect easily with your family and friends over countries
            """
        view.numberOfLines = 0
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 25.0)
        return view
    }()
    private lazy var privacyLabel: UILabel = {
        let view = UILabel()
        view.text = "Terms & Privacy Policy"
        view.font = UIFont.systemFont(ofSize: 15)
        view.textColor = UIColor.black
        return view
    }()
    private lazy var startButton: UIButton = {
        let view = UIButton()
        view.setTitleColor(.white, for: .normal)
        view.setTitle("Start Messaging", for: .normal)
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(red: 15/255, green: 44/255, blue: 218/255, alpha: 1)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
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
        view.addSubview(illustrationImage)
        illustrationImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-150)
            make.left.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-50)
            make.height.equalToSuperview().dividedBy(2.8)
        }
        view.addSubview(illustrationText)
        illustrationText.snp.makeConstraints { make in
            make.top.equalTo(illustrationImage.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
        }
        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.height.equalToSuperview().dividedBy(15)
        }
        view.addSubview(privacyLabel)
        privacyLabel.snp.makeConstraints { make in
            make.bottom.equalTo(startButton.snp.top).offset(-20)
            make.centerX.equalToSuperview()
        }
    }
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Start Messaging"{
            navigationController?.pushViewController(RegistrationController(), animated: true)
        }
    }
}

