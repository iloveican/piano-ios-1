//
//  HXWatcherBoard.h
//  Piano
//
//  Created by miaios on 16/3/24.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import <UIKit/UIKit.h>


@class HXWatcherModel;


@interface HXWatcherBoard : UIView

@property (weak, nonatomic) IBOutlet      UIView *summaryContainer;
@property (weak, nonatomic) IBOutlet UIImageView *avatar;
@property (weak, nonatomic) IBOutlet     UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet     UILabel *signatureLabel;
@property (weak, nonatomic) IBOutlet    UIButton *gagButton;

- (IBAction)closeButtonPressed;
- (IBAction)gagButtonPressed;

+ (instancetype)showWithWatcher:(HXWatcherModel *)watcher;
+ (instancetype)showWithWatcher:(HXWatcherModel *)watcher closed:(void(^)(void))closed;
+ (instancetype)showWithWatcher:(HXWatcherModel *)watcher gaged:(void(^)(void))gaged closed:(void(^)(void))closed;

@end
