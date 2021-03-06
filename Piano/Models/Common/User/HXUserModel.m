//
//  HXUserModel.m
//  mia
//
//  Created by miaios on 16/2/23.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import "HXUserModel.h"


@implementation HXUserModel

MJCodingImplementation

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"nickName": @"nick",
            @"avatarUrl": @"userpic",
          @"notifyCount": @"notifyCnt",
         @"notifyAvatar": @"notifyUserpic",
             @"coverUrl": @"liveCoverUrl"};
}

- (void)mj_objectDidFinishConvertingToKeyValues {
    _uID = [NSString stringWithFormat:@"%@", _uID];
}

@end
