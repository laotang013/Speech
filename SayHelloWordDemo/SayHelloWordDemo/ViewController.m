//
//  ViewController.m
//  SayHelloWordDemo
//
//  Created by Start on 2018/5/14.
//  Copyright © 2018年 Start. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "SpeechContorller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self test1];
    SpeechContorller *speech = [SpeechContorller speechController];
   [speech beginConversation];

}

-(void)test1
{
    AVSpeechSynthesizer *sythersizer = [[AVSpeechSynthesizer alloc]init];
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:@"hello world"];
    [sythersizer speakUtterance:utterance];
}

-(void)test2
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
