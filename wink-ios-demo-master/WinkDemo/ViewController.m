//
//  ViewController.m
//  WinkDemo
//
//  Created by Joseph Lin on 5/17/16.
//  Copyright © 2016 Wink Inc. All rights reserved.
//

#import "ViewController.h"

static NSString * const WinkAPIBaseURL = @"https://staging-api.wink.com/";
static NSString * const WinkAuthHeaderField = @"Authorization";
static NSString * const WinkAuthToken = @"";    //TODO: fill with your token
static NSString * const WinkAPIEndpointUser = @"users/me";
static NSString * const WinkAPIEndpointDevices = @"users/me/wink_devices";

static NSString * const WinkObjectTypeLightBulb     = @"light_bulb";
static NSString * const WinkObjectFieldName         = @"name";
static NSString * const WinkObjectFieldLastReading  = @"last_reading";
static NSString * const WinkObjectReadingPowered    = @"powered";
static NSString * const WinkObjectReadingBrightness = @"brightness";


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self getUser];
}

- (void)getUser
{
    NSString *string = [NSString stringWithFormat:@"%@%@", WinkAPIBaseURL, WinkAPIEndpointUser];
    NSURL *URL = [NSURL URLWithString:string];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
    [request setValue:[NSString stringWithFormat:@"Bearer %@", WinkAuthToken] forHTTPHeaderField:WinkAuthHeaderField];
    
    //TODO: send request
}

@end
