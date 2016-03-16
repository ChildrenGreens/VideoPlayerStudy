//
//  VideoPlayerView.swift
//  VideoPlayerStudy
//
//  Created by caiqiujun on 16/3/16.
//  Copyright © 2016年 caiqiujun. All rights reserved.
//

import UIKit

class VideoPlayerView: UIView {
    
    internal var coverImage: UIImageView!
    
    internal var toolBarView: VideoToolBar!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        coverImage = UIImageView()
        addSubview(coverImage)
        coverImage.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(self)
        }
        coverImage.sd_setImageWithURL(NSURL(string: "http://7xnuol.com1.z0.glb.clouddn.com/qingqiuhu.jpg"), placeholderImage: UIImage(named: ""))
        
        toolBarView = VideoToolBar()
        addSubview(toolBarView)
        toolBarView.snp_makeConstraints { (make) -> Void in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(ToolBarViewH)
        }
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
