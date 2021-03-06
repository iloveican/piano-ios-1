//
//  HXRecordBottomBar.h
//  Piano
//
//  Created by miaios on 16/3/24.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, HXRecordBottomBarAction) {
    HXRecordBottomBarActionComment,
    HXRecordBottomBarActionBeauty,
    HXRecordBottomBarActionChange,
    HXRecordBottomBarActionMute,
    HXRecordBottomBarActionGift,
    HXRecordBottomBarActionShare,
};


@class HXRecordBottomBar;


@protocol HXRecordBottomBarDelegate <NSObject>

@required
- (void)bottomBar:(HXRecordBottomBar *)bar takeAction:(HXRecordBottomBarAction)action;

@end


@interface HXRecordBottomBar : UIView

@property (weak, nonatomic) IBOutlet       id  <HXRecordBottomBarDelegate>delegate;

@property (weak, nonatomic) IBOutlet UIButton *commentButton;
@property (weak, nonatomic) IBOutlet UIButton *beautyButton;
@property (weak, nonatomic) IBOutlet UIButton *changeButton;
@property (weak, nonatomic) IBOutlet UIButton *muteButton;
@property (weak, nonatomic) IBOutlet UIButton *giftButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;

- (IBAction)commentButtonPressed;
- (IBAction)beautyButtonPressed:(UIButton *)button;
- (IBAction)changeButtonPressed;
- (IBAction)muteButtonPressed:(UIButton *)button;
- (IBAction)giftButtonPressed;
- (IBAction)shareButtonPressed;

@end
