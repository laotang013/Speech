


//
//  SpeechContorller.m
//  SayHelloWordDemo
//
//  Created by Start on 2018/5/14.
//  Copyright © 2018年 Start. All rights reserved.
//

#import "SpeechContorller.h"
@interface SpeechContorller()
/***/
@property(nonatomic,strong)AVSpeechSynthesizer *synthesizer;
@property(nonatomic,strong)NSArray *voices;
@property(nonatomic,strong)NSArray *speechString;
@end
@implementation SpeechContorller
+(instancetype)speechController
{
    return [[self alloc]init];
}
-(instancetype)init
{
    self = [super init];
    if (self) {
        _synthesizer = [[AVSpeechSynthesizer alloc]init];
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-cn"]];
       _speechString =  [self buildSpeedString];
    }
    return self;
}

-(NSArray *)buildSpeedString
{
    return @[@"厉害了我的哥"];
}
-(void)beginConversation
{
    for (int i=0; i<self.speechString.count; i++) {
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:self.speechString[i]];
        utterance.voice = self.voices[i];
        utterance.rate = 0.5;
        utterance.pitchMultiplier = 0.8;
        utterance.postUtteranceDelay = 0.1f;
        [self.synthesizer speakUtterance:utterance];
    }
}
@end
