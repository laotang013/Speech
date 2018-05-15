//
//  SpeechContorller.h
//  SayHelloWordDemo
//
//  Created by Start on 2018/5/14.
//  Copyright © 2018年 Start. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@interface SpeechContorller : NSObject
@property(nonatomic,strong,readonly)AVSpeechSynthesizer *synthesizer;
+(instancetype)speechController;
-(void)beginConversation;
@end
