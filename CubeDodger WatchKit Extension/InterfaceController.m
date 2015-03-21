//
//  InterfaceController.m
//  CubeDodger WatchKit Extension
//
//  Created by Adrien Canterot on 20/11/2014.
//  Copyright (c) 2014 Adrien Canterot. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *scoreLabel;
@property (strong, nonatomic) NSUserDefaults* userDefaults;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        self.userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.CubeDodger.UserDefaults"];
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)setScoreString:(NSString *)scoreString {
    _scoreString = scoreString;
    [self.scoreLabel setText:scoreString];
}
- (void)willActivate {
    
    NSNumber *highScore = [NSNumber numberWithLong:[self.userDefaults integerForKey:@"highscore"]];
    [self.scoreLabel setText:[NSString stringWithFormat:@"%ld", (long)[highScore integerValue]]];
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



