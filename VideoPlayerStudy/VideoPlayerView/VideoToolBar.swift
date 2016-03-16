//
//  VideoToolBar.swift
//  VideoPlayerStudy
//
//  Created by caiqiujun on 16/3/16.
//  Copyright © 2016年 caiqiujun. All rights reserved.
//

import UIKit

class VideoToolBar: UIView {
    /// 底部灰色视图框
    var bottomView: UIView!
    /// 播放按钮
    var playBtn: UIButton!
    /// 全屏按钮
    var fullBtn: UIButton!
    /// 当前播放进度
    var currentLabel: UILabel!
    /// 总时间
    var sumLabel: UILabel!
    /// 滑动条
    var playerSlider: UISlider!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // 背景view
        bottomView = UIView()
        bottomView.backgroundColor = UIColor(white: 0.1, alpha: 0.8)
        addSubview(bottomView)
        // 设置布局
        bottomView.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self)
        }
        
        // 播放按钮
        playBtn = UIButton(type: .Custom)
        playBtn.setImage(UIImage(named: "play_btn.png"), forState: .Normal)
        playBtn.setImage(UIImage(named: "pause_btn.png"), forState: .Selected)
        playBtn.addTarget(self, action: "playBtnClick:", forControlEvents:.TouchUpInside)

        bottomView.addSubview(playBtn)
        playBtn.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(ToolBarViewH * 0.25)
            make.left.equalTo(ToolBarViewH * 0.3)
            make.width.height.equalTo(ToolBarViewH * 0.5)
        }
        
        // 全屏按钮
        fullBtn = UIButton(type: .Custom)
        fullBtn.setImage(UIImage(named: "fullscreen.png"), forState: .Normal)
        fullBtn.setImage(UIImage(named: "fullscreenS.png"), forState: .Highlighted)
        fullBtn.addTarget(self, action: "fullBtnClick:", forControlEvents: .TouchUpInside)
        bottomView.addSubview(fullBtn)
        fullBtn.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(ToolBarViewH * 0.25)
            make.left.equalTo(ScreenWidth * 0.92)
            make.width.height.equalTo(ToolBarViewH * 0.5)
        }
        
        // 当前播放进度Label
        currentLabel = UILabel()
        currentLabel.textColor = UIColor.whiteColor()
        currentLabel.font = UIFont.systemFontOfSize(10)
        currentLabel.textAlignment = .Left
        currentLabel.text = "15:59"
        bottomView.addSubview(currentLabel)
        currentLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(ToolBarViewH * 0.25)
            make.left.equalTo(ScreenWidth * 0.14)
            make.width.equalTo(ScreenWidth * 0.15)
            make.height.equalTo(ToolBarViewH * 0.5)
        }
        
        
        // 总播放时间
        sumLabel = UILabel()
        sumLabel.textColor = UIColor.whiteColor()
        sumLabel.font = UIFont.systemFontOfSize(10)
        sumLabel.textAlignment = .Left
        sumLabel.text = "42:23"
        bottomView.addSubview(sumLabel)
        sumLabel.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(ToolBarViewH * 0.25)
            make.left.equalTo(ScreenWidth * 0.78)
            make.width.equalTo(ScreenWidth * 0.15)
            make.height.equalTo(ToolBarViewH * 0.5)
        }
        
        /// 滑动条
        playerSlider = UISlider()
        playerSlider.minimumTrackTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 0.6)
        playerSlider.maximumTrackTintColor = UIColor.blackColor()
        playerSlider.setThumbImage(UIImage(named: "slider.png"), forState: .Normal)
        
        playerSlider.minimumValue = 0
        playerSlider.maximumValue = 2543
        bottomView.addSubview(playerSlider)
        playerSlider.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(ToolBarViewH * 0.4)
            make.left.equalTo(ScreenWidth * 0.245)
            make.width.equalTo(ScreenWidth * 0.5)
            make.height.equalTo(ToolBarViewH * 0.2)
        }
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func chanageImageSize(originImage: UIImage, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        originImage .drawInRect(CGRectMake(0, 0, size.width, size.height))
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage
    }
   
    
}
// MARK: 按钮点击事件
extension VideoToolBar {
    //  播放与暂停按钮
    func playBtnClick(btn: UIButton) {
        
        playBtn.selected = !playBtn.selected
        
    }
    // 全屏按钮
    func fullBtnClick(btn: UIButton) {
        
    }
}
