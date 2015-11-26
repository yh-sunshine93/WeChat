//
//  LoginViewController.swift
//  WeChat
//
//  Created by yh_SunShine on 15/11/26.
//  Copyright © 2015年 yhsunshine. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI();
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func initUI(){
    
        let label=UILabel(frame: CGRectMake(0,100,self.view.frame.width,100));
        self.view.addSubview(label);
        label.text="登录账户";
        label.font=UIFont(name: FontFamilyName, size: 30);
        label.textAlignment=NSTextAlignment.Center;
        
        let userNameLabel=UILabel(frame: CGRectMake(20,label.bottom,50,50));
        self.view.addSubview(userNameLabel);
        userNameLabel.text="账户";
        userNameLabel.font=UIFont(name: FontFamilyName, size: 15);
        
        let userTextField=UITextField(frame: CGRectMake(userNameLabel.right,userNameLabel.top,self.view.width-userNameLabel.right,userNameLabel.height));
        self.view.addSubview(userTextField);
        userTextField.placeholder="微信号"
        userTextField.font=UIFont(name: FontFamilyName, size: 15);
        userTextField.clearButtonMode=UITextFieldViewMode.Always;
        
        let middleLine=UIView(frame: CGRectMake(userNameLabel.left,userNameLabel.bottom,self.view.width-userNameLabel.left,1));
        self.view.addSubview(middleLine);
        middleLine.backgroundColor=UIColor(red: 233.0/255.0, green: 233.0/255.0, blue: 233.0/255.0, alpha: 1.0);
        
        let passwordLabel=UILabel(frame: CGRectMake(20,middleLine.bottom,50,50));
        self.view.addSubview(passwordLabel);
        passwordLabel.text="密码";
        passwordLabel.font=UIFont(name: FontFamilyName, size: 15);
        
        let passwordTextField=UITextField(frame: CGRectMake(passwordLabel.right,passwordLabel.top,self.view.width-passwordLabel.right,passwordLabel.height));
        self.view.addSubview(passwordTextField);
        passwordTextField.placeholder="请填写密码"
        passwordTextField.font=UIFont(name: FontFamilyName, size: 15);
        passwordTextField.secureTextEntry=true;
        
        let bottomLine=UIView(frame: CGRectMake(passwordLabel.left,passwordLabel.bottom,self.view.width-passwordLabel.left,1));
        self.view.addSubview(bottomLine);
        bottomLine.backgroundColor=UIColor(red: 223.0/256.0, green: 223.0/256.0, blue: 223.0/256.0, alpha: 1.0);
        
        let loginButton=UIButton(frame: CGRectMake(20,bottomLine.bottom+30,self.view.width-40,44));
        self.view.addSubview(loginButton);
        loginButton.backgroundColor=UIColor(red: 110.0/256.0, green: 215.0/256.0, blue: 109.0/256.0, alpha: 1.0);
        loginButton.titleLabel?.font=UIFont(name: FontFamilyName, size: 17);
        loginButton.setTitle("登录", forState: UIControlState.Normal);
        loginButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        loginButton.addTarget(self, action: "loginButtonClick:", forControlEvents: UIControlEvents.TouchUpInside);
        
    }
    
    func loginButtonClick(sender:UIButton){
    
        print(NSString(format: "%@", "login"));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
