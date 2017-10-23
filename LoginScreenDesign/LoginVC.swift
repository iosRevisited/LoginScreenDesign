//
//  LoginVC.swift
//  Testing
//
//  Created by Sai Sandeep on 23/10/17.
//  Copyright © 2017 iosRevisited. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let templateColor = UIColor.white
    
    let bgImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "bg.jpg")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let logoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0.8
        imageView.image = UIImage(named: "skull.png")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let bgView : UIView = {
        let bgView = UIView()
        bgView.translatesAutoresizingMaskIntoConstraints = false
        bgView.backgroundColor = UIColor(displayP3Red: 9.0/255.0, green: 33.0/255.0, blue: 47.0/255.0, alpha: 1.0).withAlphaComponent(0.7)
        return bgView
    }()
    
    let textFieldView1 : TextFieldView = {
        let textFieldView = TextFieldView()
        textFieldView.translatesAutoresizingMaskIntoConstraints = false
        textFieldView.backgroundColor = UIColor.clear
        return textFieldView
    }()
    
    let textFieldView2 : TextFieldView = {
        let textFieldView = TextFieldView()
        textFieldView.translatesAutoresizingMaskIntoConstraints = false
        textFieldView.backgroundColor = UIColor.clear
        return textFieldView
    }()
    
    let signInButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let forgotPassword : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signUpButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addingUIElements()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    func addingUIElements() {
        let padding: CGFloat = 40.0
        let signInButtonHeight: CGFloat = 50.0
        let textFieldViewHeight: CGFloat = 60.0
        
        // Background imageview
        self.view.addSubview(bgImageView)
        bgImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0).isActive = true
        bgImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.0).isActive = true
        bgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0).isActive = true
        bgImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        
        // Background layer view
        view.insertSubview(bgView, aboveSubview: bgImageView)
        bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0).isActive = true
        bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.0).isActive = true
        bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0.0).isActive = true
        bgView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0).isActive = true
        
        // Logo at top
        view.insertSubview(logoImageView, aboveSubview: bgView)
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60.0).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: logoImageView.heightAnchor, constant: 0.0).isActive = true
        
        // Email textfield and icon
        view.insertSubview(textFieldView1, aboveSubview: bgView)
        textFieldView1.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20.0).isActive = true
        textFieldView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        textFieldView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
        textFieldView1.heightAnchor.constraint(equalToConstant: textFieldViewHeight).isActive = true
        
        textFieldView1.imgView.image = UIImage(named: "Profile")
        let attributesDictionary = [NSAttributedStringKey.foregroundColor: UIColor.lightGray]
        textFieldView1.textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: attributesDictionary)
        textFieldView1.textField.textColor = templateColor
        
        // Password textfield and icon
        view.insertSubview(textFieldView2, aboveSubview: bgView)
        textFieldView2.topAnchor.constraint(equalTo: textFieldView1.bottomAnchor, constant: 0.0).isActive = true
        textFieldView2.leadingAnchor.constraint(equalTo: textFieldView1.leadingAnchor, constant: 0.0).isActive = true
        textFieldView2.trailingAnchor.constraint(equalTo: textFieldView1.trailingAnchor, constant: 0.0).isActive = true
        textFieldView2.heightAnchor.constraint(equalTo: textFieldView1.heightAnchor, constant: 0.0).isActive = true
        
        textFieldView2.imgView.image = UIImage(named: "Lock")
        textFieldView2.textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: attributesDictionary)
        textFieldView2.textField.isSecureTextEntry = true
        textFieldView2.textField.textColor = templateColor
        
        // Sign In Button
        view.insertSubview(signInButton, aboveSubview: bgView)
        signInButton.topAnchor.constraint(equalTo: textFieldView2.bottomAnchor, constant: 20.0).isActive = true
        signInButton.leadingAnchor.constraint(equalTo: textFieldView1.leadingAnchor, constant: 0.0).isActive = true
        signInButton.trailingAnchor.constraint(equalTo: textFieldView1.trailingAnchor, constant: 0.0).isActive = true
        signInButton.heightAnchor.constraint(equalToConstant: signInButtonHeight).isActive = true
        
        let buttonAttributesDictionary = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15.0),
                                          NSAttributedStringKey.foregroundColor: templateColor]
        signInButton.alpha = 0.4
        signInButton.backgroundColor = UIColor.lightGray
        signInButton.setAttributedTitle(NSAttributedString(string: "SIGN IN", attributes: buttonAttributesDictionary), for: .normal)
        signInButton.isEnabled = false
        signInButton.addTarget(self, action: #selector(signInButtonTapped(button:)), for: .touchUpInside)
        
        // Forgot Password Button
        view.insertSubview(forgotPassword, aboveSubview: bgView)
        forgotPassword.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 0.0).isActive = true
        forgotPassword.leadingAnchor.constraint(equalTo: textFieldView1.leadingAnchor, constant: 0.0).isActive = true
        forgotPassword.trailingAnchor.constraint(equalTo: textFieldView1.trailingAnchor, constant: 0.0).isActive = true
        
        forgotPassword.setTitle("Forgot password?", for: .normal)
        forgotPassword.setTitleColor(templateColor, for: .normal)
        forgotPassword.titleLabel?.font = UIFont.systemFont(ofSize: 16.0)
        forgotPassword.addTarget(self, action: #selector(forgotPasswordButtonTapped(button:)), for: .touchUpInside)
        
        // sign Up Button
        view.insertSubview(signUpButton, aboveSubview: bgView)
        signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: textFieldView1.leadingAnchor, constant: 0.0).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: textFieldView1.trailingAnchor, constant: 0.0).isActive = true
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped(button:)), for: .touchUpInside)
        
        let text = "Don't have an account? Sign Up"
        let attributedString = NSMutableAttributedString.init(string: text)
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.center
        
        let detailAttributes = [ NSAttributedStringKey.foregroundColor : templateColor,
                                 NSAttributedStringKey.font : UIFont.systemFont(ofSize: 16.0) ,NSAttributedStringKey.paragraphStyle : style]
        
        attributedString.addAttributes(detailAttributes, range: NSMakeRange(0, attributedString.length))
        
        
        let sampleLinkRange1 = text.range(of: "Sign Up")!
        let startPos1 = text.distance(from: text.startIndex, to: sampleLinkRange1.lowerBound)
        let endPos1 = text.distance(from: text.startIndex, to: sampleLinkRange1.upperBound)
        let linkRange1 = NSMakeRange(startPos1, endPos1 - startPos1)
        let linkAttributes1 = [ NSAttributedStringKey.foregroundColor : templateColor,
                                NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 16.0)]
        
        attributedString.addAttributes(linkAttributes1, range: linkRange1)
        
        signUpButton.setAttributedTitle(attributedString, for: .normal)
    }
    
    @objc private func signInButtonTapped(button: UIButton) {
        showAlertVC(title: "Sign In tapped")
    }
    
    @objc private func signUpButtonTapped(button: UIButton) {
        showAlertVC(title: "Sign up tapped")
    }
    
    @objc private func forgotPasswordButtonTapped(button: UIButton) {
        showAlertVC(title: "Forgot password tapped")
    }
    
    func showAlertVC(title: String) {
        let alertController = UIAlertController(title: title, message: "Need to implement code based on user requirements", preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion:{})
    }
}

class TextFieldView: UIView {
    
    let imgView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let textField : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let lineView : UIView = {
        let bgView = UIView()
        bgView.translatesAutoresizingMaskIntoConstraints = false
        bgView.backgroundColor = UIColor.white
        return bgView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addingSubviews()
    }
    
    func addingSubviews() {
        self.addSubview(lineView)
        lineView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0).isActive = true
        lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.0).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0.0).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1.0).isActive = true
        
        self.addSubview(imgView)
        imgView.bottomAnchor.constraint(equalTo: lineView.topAnchor, constant: -15.0).isActive = true
        imgView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.0).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, constant: 0.0).isActive = true
        
        self.addSubview(textField)
        textField.lastBaselineAnchor.constraint(equalTo: imgView.lastBaselineAnchor, constant: -1.0).isActive = true
        textField.leadingAnchor.constraint(equalTo: imgView.trailingAnchor, constant: 8.0).isActive = true
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0.0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



