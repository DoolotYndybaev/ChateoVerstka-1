//
//  profileSave.swift
//  Chateo
//
//  Created by Doolot on 15/2/22.
//
import Foundation
import UIKit
import SnapKit

class ProfileSaveController: UIViewController {
    
    private lazy var profileImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Change Avatar")
        return view
    }()
    private lazy var firstNameImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Input (1)")
        return view
    }()
    private lazy var lastNameImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Input (2)")
        return view
    }()
    private lazy var continueButton: UIButton = {
        let view = UIButton()
        view.setTitleColor(.white, for: .normal)
        view.setTitle("Save", for: .normal)
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(red: 15/255, green: 44/255, blue: 218/255, alpha: 1)
    //    view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
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
        view.addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(-250)
            make.centerX.equalToSuperview()
        }
        view.addSubview(firstNameImage)
        firstNameImage.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        view.addSubview(lastNameImage)
        lastNameImage.snp.makeConstraints { make in
            make.top.equalTo(firstNameImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        view.addSubview(continueButton)
        continueButton.snp.makeConstraints { make in
            make.top.equalTo(lastNameImage.snp.bottom).offset(50)
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
        if sender.titleLabel?.text == "Save"{
            navigationController?.pushViewController(RegistrationController(), animated: true)
        }
    }
}
