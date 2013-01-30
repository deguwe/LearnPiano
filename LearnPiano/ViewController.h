//
//  ViewController.h
//  LearnPiano
//
//  Created by Dennis Westberg on 2013-01-28.
//  Copyright (c) 2013 Dennis Westberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController : UIViewController{
    int currentNumber;
    __weak IBOutlet UILabel *result;
AVAudioPlayer *sound;
}

-(IBAction)pressButton: (id)sender;

@end
