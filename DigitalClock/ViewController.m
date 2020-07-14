//
//  ViewController.m
//  DigitalClock
//
//  Created by Kapil Khatri on 10/04/19.
//  Copyright © 2019 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self updateTimer];
    
    self.settingsView.hidden=YES;
    self.settingsOutlet.alpha = 0.25;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

-(void)updateTimer
{
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.label.text = [formatter stringFromDate:[NSDate date]];
    
    
}

- (IBAction)settingsButton:(id)sender {
    
    if(self.settingsView.hidden == NO)
    {
        self.settingsView.hidden = YES;
        self.settingsOutlet.alpha = 0.25;
        [self.settingsOutlet setTitle:@"Show Settings" forState:UIControlStateNormal];
        
    }
    else
    {
        self.settingsView.hidden = NO;
        self.settingsOutlet.alpha = 1;
        [self.settingsOutlet setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
    
    
    
}

- (IBAction)clockColorSeg:(id)sender {
    
    if(self.clockColorOutlet.selectedSegmentIndex == 0)
    {
        self.label.textColor = [UIColor whiteColor];
    }
    else if(self.clockColorOutlet.selectedSegmentIndex == 1)
    {
        self.label.textColor = [UIColor blackColor];
    }
    else if(self.clockColorOutlet.selectedSegmentIndex==2)
    {
        self.label.textColor = [UIColor greenColor];
    }
    else if(self.clockColorOutlet.selectedSegmentIndex==3)
    {
        self.label.textColor = [UIColor redColor];
    }
}

- (IBAction)backColorSeg:(id)sender {
    
    if(self.backColorOutlet.selectedSegmentIndex == 0)
    {
        self.viewOutlet.backgroundColor = [UIColor blackColor];
    }
    else if(self.backColorOutlet.selectedSegmentIndex == 1)
    {
        self.viewOutlet.backgroundColor = [UIColor yellowColor];
    }
    else if(self.backColorOutlet.selectedSegmentIndex == 2)
    {
        self.viewOutlet.backgroundColor = [UIColor blueColor];
    }
    else if(self.backColorOutlet.selectedSegmentIndex == 3)
    {
        self.viewOutlet.backgroundColor = [UIColor grayColor];
    }
}
@end
