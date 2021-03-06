//
//  HXLiveRewardViewController.h
//  Piano
//
//  Created by miaios on 16/5/11.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import "UIViewController+HXClass.h"


@class HXAlbumModel;
@class HXSectorSlider;


@interface HXLiveRewardViewController : UIViewController

@property (weak, nonatomic) IBOutlet  UIView *tapView;
@property (weak, nonatomic) IBOutlet  UIView *tapCoinView;
@property (weak, nonatomic) IBOutlet  UIView *containerView;

@property (weak, nonatomic) IBOutlet UIImageView *albumCover;
@property (weak, nonatomic) IBOutlet     UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet     UILabel *artistNameLabel;
@property (weak, nonatomic) IBOutlet     UILabel *rewardPersonCountLabel;

@property (weak, nonatomic) IBOutlet UILabel *rewardCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *balanceCountLabel;
@property (weak, nonatomic) IBOutlet  UIView *rechargeContainer;

@property (weak, nonatomic) IBOutlet HXSectorSlider *sectorSlider;

@property (nonatomic, strong)     NSString *roomID;
@property (nonatomic, strong)     NSString *streamID;
@property (nonatomic, strong) HXAlbumModel *album;

- (IBAction)rewardButtonPressed;

@end
