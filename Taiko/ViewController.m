//
//  ViewController.m
//  Taiko
//
//  Created by Fukazawa kota on 2015/05/21.
//  Copyright (c) 2015年 Kota Fukazawa. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property AVAudioPlayer *taiko;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"taiko" ofType:@"wav"];
    NSURL *url = [NSURL fileURLWithPath:path];
    self.taiko =[[AVAudioPlayer alloc] initWithContentsOfURL:url error:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playSound {
    
    if (self.taiko.playing) {
        self.taiko.currentTime =0.0;
    }else{
        [self.taiko play];
        }
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    

}

@end
