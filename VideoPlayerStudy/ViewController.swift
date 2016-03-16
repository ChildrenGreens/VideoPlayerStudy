//
//  ViewController.swift
//  VideoPlayerStudy
//
//  Created by caiqiujun on 16/3/16.
//  Copyright © 2016年 caiqiujun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playerView: VideoPlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        playerView = VideoPlayerView()
        view.addSubview(playerView)
        
        playerView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(20)
            make.left.right.equalTo(view)
            make.height.equalTo(view.bounds.size.width * 0.55)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

