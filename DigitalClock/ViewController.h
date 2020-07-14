//
//  ViewController.h
//  DigitalClock
//
//  Created by Kapil Khatri on 10/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *viewOutlet;

@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorOutlet;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backColorOutlet;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UIButton *settingsOutlet;

- (IBAction)settingsButton:(id)sender;
- (IBAction)clockColorSeg:(id)sender;
- (IBAction)backColorSeg:(id)sender;


@end

