//
//  ViewController.swift
//  CustomFont
//
//  Created by 卓奇 屠 on 2018/10/10.
//  Copyright © 2018 卓奇 屠. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var fontTableView: UITableView!
    @IBOutlet weak var changeButton: UIButton!
    
    var fontRowIndex = 0
    
    var data = ["30 Days Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project", "微博 @小Kevin奇",
                "测试测试测试测试测试测试",
                "123",
                "Alex",
                "@@@@@@"]
    
    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "Zapfino", "Gaspar Regular"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fontTableView.delegate = self
        fontTableView.dataSource = self
        changeButton.layer.cornerRadius = 50
        
//        for family in UIFont.familyNames {
//            for font in UIFont.fontNames(forFamilyName: family) {
//                print(font)
//            }
//        }
    }
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        fontRowIndex = (fontRowIndex + 1) % 5
        print(fontNames[fontRowIndex])
        fontTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fontTableView.dequeueReusableCell(withIdentifier: "FontCell", for: indexPath)
        let text = data[indexPath.row]
        cell.textLabel?.text = text
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont(name: self.fontNames[fontRowIndex], size: 16)
        
        return cell
    }


}

