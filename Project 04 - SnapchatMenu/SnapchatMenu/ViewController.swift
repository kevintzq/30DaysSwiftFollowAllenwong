//
//  ViewController.swift
//  SnapchatMenu
//
//  Created by 卓奇 屠 on 2018/10/11.
//  Copyright © 2018 卓奇 屠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let leftView: LeftViewController = LeftViewController()
        let rightView: RightViewController = RightViewController()
        let centerView: CameraViewController = CameraViewController()
        
        self.addChild(leftView)
        self.scrollView.addSubview(leftView.view)
        leftView.didMove(toParent: self)
        
        self.addChild(rightView)
        self.scrollView.addSubview(rightView.view)
        rightView.didMove(toParent: self)
        
        self.addChild(centerView)
        self.scrollView.addSubview(centerView.view)
        centerView.didMove(toParent: self)
        
        var centerViewFrame: CGRect = centerView.view.frame
        centerViewFrame.origin.x = self.view.frame.width
        centerView.view.frame = centerViewFrame
        
        var rightViewFrame: CGRect = rightView.view.frame
        rightViewFrame.origin.x = 2 * self.view.frame.width
        rightView.view.frame = rightViewFrame
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)
        
    }


}

