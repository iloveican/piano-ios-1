//
//  JOURLFileDownloadConfig.m
//  JOProjectBaseSDK
//
//  Created by 刘维 on 15/11/26.
//  Copyright © 2015年 刘维. All rights reserved.
//

/*resumeData存储的数据格式
 
 {
 NSURLSessionDownloadURL = "http://p1.pichost.me/i/40/1639665.png";
 NSURLSessionResumeBytesReceived = 561488;
 NSURLSessionResumeCurrentRequest = <62706c69 73743030 d4010203 0405067a 7b582476 65727369 6f6e5824 6f626a65 63747359 24617263 68697665 72542474 6f701200 0186a0af 101b0708 29454b4c 52535455 38563a57 5868696a 6b6c6d6e 6f707172 7655246e 756c6cdf 101e090a 0b0c0d0e 0f101112 13141516 1718191a 1b1c1d1e 1f202122 23242526 2728292a 2b2c2d28 2f30312b 332b2a2a 2a38273a 3b2a3d2a 3f2a3b42 38435324 31325224 335f101e 72657175 69726573 53686f72 74436f6e 6e656374 696f6e54 696d656f 75745324 32355324 31375224 34532432 31532431 33562463 6c617373 52243553 24313852 24365324 32325324 31345224 37532431 39532431 305f101a 7061796c 6f616454 72616e73 6d697373 696f6e54 696d656f 75745224 38522430 53243135 53243233 52243953 24313152 24315324 32345324 31365224 325f1010 73746172 7454696d 656f7574 54696d65 53243230 80088002 08800080 07800380 0d800280 1a800680 0b800780 0e800780 00800080 00230000 00000000 00008008 1002800a 80008009 80001009 8000800a 1016800c 08d34611 472a494a 574e532e 62617365 5b4e532e 72656c61 74697665 80008005 80045f10 25687474 703a2f2f 70312e70 6963686f 73742e6d 652f692f 34302f31 36333936 36352e70 6e67d24d 4e4f505a 24636c61 73736e61 6d655824 636c6173 73657355 4e535552 4ca24f51 584e534f 626a6563 7423404e 00000000 00001000 09100413 ffffffff ffffffff 53474554 d3595a11 5b616757 4e532e6b 6579735a 4e532e6f 626a6563 7473a55c 5d5e5f60 800f8010 80118012 8013a562 63646566 80148015 80168017 80188019 5552616e 67655f10 0f416363 6570742d 4c616e67 75616765 5849662d 52616e67 65564163 63657074 5f100f41 63636570 742d456e 636f6469 6e675d62 79746573 3d313433 3131322d 55656e2d 75735f10 11223534 33633939 65342d31 33656464 3022532a 2f2a5d67 7a69702c 20646566 6c617465 d24d4e73 745c4e53 44696374 696f6e61 7279a275 515c4e53 44696374 696f6e61 7279d24d 4e77785c 4e535552 4c526571 75657374 a279515c 4e535552 4c526571 75657374 5f100f4e 534b6579 65644172 63686976 6572d17c 7d54726f 6f748001 00080011 001a0023 002d0032 00370055 005b009a 009e00a1 00c200c6 00ca00cd 00d100d5 00dc00df 00e300e6 00ea00ee 00f100f5 00f90116 0119011c 01200124 0127012b 012e0132 01360139 014c0150 01520154 01550157 0159015b 015d015f 01610163 01650167 0169016b 016d016f 0171017a 017c017e 01800182 01840186 0188018a 018c018e 01900191 019801a0 01ac01ae 01b001b2 01da01df 01ea01f3 01f901fc 0205020e 02100211 0213021c 02200227 022f023a 02400242 02440246 0248024a 02500252 02540256 0258025a 025c0262 0274027d 02840296 02a402aa 02be02c2 02d002d5 02e202e5 02f202f7 03040307 03140326 0329032e 00000000 00000201 00000000 0000007e 00000000 00000000 00000000 00000330>;
 NSURLSessionResumeEntityTag = "\"52becc01-13edd0\"";
 NSURLSessionResumeInfoTempFileName = "CFNetworkDownload_8KEtQZ.tmp";
 NSURLSessionResumeInfoVersion = 2;
 NSURLSessionResumeOriginalRequest = <62706c69 73743030 d4010203 04050650 51582476 65727369 6f6e5824 6f626a65 63747359 24617263 68697665 72542474 6f701200 0186a0ad 07083839 3f404647 48232f4a 4b55246e 756c6cdf 1018090a 0b0c0d0e 0f101112 13141516 1718191a 1b1c1d1e 1f202121 23242526 27282924 242c2c2c 2f213132 332c3532 372f5324 31325224 335f101e 72657175 69726573 53686f72 74436f6e 6e656374 696f6e54 696d656f 75745324 31375224 34532431 33562463 6c617373 52243553 24313852 24365324 31345224 37532431 39532431 305f101a 7061796c 6f616454 72616e73 6d697373 696f6e54 696d656f 75745224 38522430 53243135 52243953 24313152 24315324 31365224 325f1010 73746172 7454696d 656f7574 54696d65 80028002 08800780 03800980 0c800680 0b800780 07800080 00800023 00000000 00000000 80021002 800a8008 80001009 800a1010 09d33a0f 3b2c3d3e 574e532e 62617365 5b4e532e 72656c61 74697665 80008005 80045f10 25687474 703a2f2f 70312e70 6963686f 73742e6d 652f692f 34302f31 36333936 36352e70 6e67d241 4243445a 24636c61 73736e61 6d655824 636c6173 73657355 4e535552 4ca24345 584e534f 626a6563 7423404e 00000000 00001000 10040813 ffffffff ffffffff d241424c 4d5f1013 4e534d75 7461626c 6555524c 52657175 657374a3 4e4f455f 10134e53 4d757461 626c6555 524c5265 71756573 745c4e53 55524c52 65717565 73745f10 0f4e534b 65796564 41726368 69766572 d1525354 726f6f74 80010008 0011001a 0023002d 00320037 0045004b 007e0082 008500a6 00aa00ad 00b100b8 00bb00bf 00c200c6 00c900cd 00d100ee 00f100f4 00f800fb 00ff0102 01060109 011c011e 01200121 01230125 01270129 012b012d 012f0131 01330135 01370140 01420144 01460148 014a014c 014e0150 01510158 0160016c 016e0170 0172019a 019f01aa 01b301b9 01bc01c5 01ce01d0 01d201d3 01dc01e1 01f701fb 0211021e 02300233 02380000 00000000 02010000 00000000 00540000 00000000 00000000 00000000 023a>;
 NSURLSessionResumeServerDownloadDate = "Sat, 28 Dec 2013 13:02:57 GMT";
 }
 
 */

#import "JOFileDownloadConfig.h"
#import "JOFException.h"
#import "JOFFileManage.h"

@implementation JOFileDownloadConfig

- (void)setFileSavePath:(NSString *)fileSavePath fileSaveName:(NSString *)fileSaveName isCleanExistFile:(BOOL)isClean{
    
    JOArgumentsCAssertNotNil(fileSaveName&&[fileSaveName length]&&fileSavePath&&[fileSavePath length], @"JOFileDownloadConfig: fileSavePath,fileSaveName is error.");
    
    if ([JOFFileManage fileExistAtFilePath:fileSavePath]) {
        
        self.fileSavePath = nil;
        self.fileSavePath = fileSavePath;
    }else{
        
        [JOFException exceptionWithName:@"JOFileDownloadConfig exception!" reason:@"fileSavePath 该路径不存在,请检查是否正确"];
    }
    
    self.fileSaveName = nil;
    self.fileSaveName = fileSaveName;
    
    self.isCleanExistFile = isClean;
}

@end
