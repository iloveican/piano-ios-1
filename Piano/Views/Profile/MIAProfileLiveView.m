//
//  MIAProfileLiveView.m
//  Piano
//
//  Created by 刘维 on 16/5/6.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import "MIAProfileLiveView.h"
#import "MIAProfileViewModel.h"

static CGFloat const kShowImageToTitleDistanceSpace = 10.;
static CGFloat const kTitleTopDistanceSpace = 15.;
static CGFloat const kTitleToTipDistanceSpace = 5.;

@interface MIAProfileLiveView()

@property (nonatomic, strong) MIAProfileLiveModel *liveModel;

@end

@implementation MIAProfileLiveView

- (void)updateViewLayout{
    
    [super updateViewLayout];
    
    [self.showImageView setBackgroundColor:[UIColor grayColor]];
    [[self.showImageView layer] setCornerRadius:3.];
    [self.showTitleLabel setJOFont:[MIAFontManage getFontWithType:MIAFontType_Profile_Live_Title]];
    [self.showTitleLabel setTextAlignment:NSTextAlignmentLeft];
    
    [self.showTipLabel setTextAlignment:NSTextAlignmentLeft];
    [self.showTipLabel setJOFont:[MIAFontManage getFontWithType:MIAFontType_Profile_Live_Summary]];
    
    
    [JOAutoLayout autoLayoutWithLeftSpaceDistance:0. selfView:self.showImageView superView:self];
    [JOAutoLayout autoLayoutWithBottomSpaceDistance:0. selfView:self.showImageView superView:self];
    [JOAutoLayout autoLayoutWithTopSpaceDistance:0. selfView:self.showImageView superView:self];
    [JOAutoLayout autoLayoutWithHeightWidthRatioValue:1. selfView:self.showImageView superView:self];
    
    [JOAutoLayout autoLayoutWithTopYView:self.showImageView distance:kTitleTopDistanceSpace selfView:self.showTitleLabel superView:self];
    [JOAutoLayout autoLayoutWithLeftView:self.showImageView distance:kShowImageToTitleDistanceSpace selfView:self.showTitleLabel superView:self];
    [JOAutoLayout autoLayoutWithRightSpaceDistance:0. selfView:self.showTitleLabel superView:self];
    [JOAutoLayout autoLayoutWithHeight:[self.showTitleLabel sizeThatFits:JOMAXSize].height selfView:self.showTitleLabel superView:self];
    
    [JOAutoLayout autoLayoutWithTopView:self.showTitleLabel distance:kTitleToTipDistanceSpace selfView:self.showTipLabel superView:self];
    [JOAutoLayout autoLayoutWithLeftXView:self.showTitleLabel selfView:self.showTipLabel superView:self];
    [JOAutoLayout autoLayoutWithRightXView:self.showTitleLabel selfView:self.showTipLabel superView:self];
    [JOAutoLayout autoLayoutWithHeight:[self.showTipLabel sizeThatFits:JOMAXSize].height selfView:self.showTipLabel superView:self];
}

- (void)setShowData:(id)data{
    
    if ([data isKindOfClass:[MIAProfileLiveModel class]]) {
        
        self.liveModel = nil;
        self.liveModel = data;
        
        [self.showImageView sd_setImageWithURL:[NSURL URLWithString:_liveModel.liveCoverURL] placeholderImage:nil];
         [self.showTitleLabel setText:[NSString stringWithFormat:@"%@正在直播",_liveModel.nickName]];
         [self.showTipLabel setText:_liveModel.liveTitle];
        
        [self updateViewLayout];
        
    }else{
    
        [JOFException exceptionWithName:@"MIAProfileLiveView exception!" reason:@"data类型需要为LiveModel"];
    }
    
}

@end