//
//  ViewController.m
//  LearnPiano
//
//  Created by Dennis Westberg on 2013-01-28.
//  Copyright (c) 2013 Dennis Westberg. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) pressButton: (id)sender {
    NSString *buttonName=[sender currentTitle];
    NSString *pathsoundFile = [[NSBundle mainBundle] pathForResource:  buttonName ofType:@"aif"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathsoundFile] error:NULL];
    sound.delegate = self;
    sound.volume = 1;
    [sound play];
    currentNumber = [sender tag];
    result.text = [NSString stringWithFormat:@"%i", currentNumber];
}


/*
-(IBAction)playSound:(id)sender {
    SystemSoundID soundID;
    NSString *buttonName=[sender currentTitle];
    NSString *soundFile=[[NSBundle mainBundle]
                         pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID(__bridge CFURLRef)
    [NSURL fileURLWithPath: soundFile ], &
    soundID];
    AudioServicesPlaySystemSound(soundID);
    
}
*/

/*
- (IBAction)playSound:(id)sender{
    SystemSoundID soundID;
    NSString *buttonName=[sender currentTitle];
    NSString *soundFile=[[NSBundle mainBundle]
                         ﻿ pathForResource:buttonName ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) [NSURL fileURLWithPath: soundFile], &
                                     soundID);
    AudioServicesPlaySystemSound(s­oundID);
    
}
*/



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
