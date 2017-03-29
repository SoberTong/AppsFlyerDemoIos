//
//  ViewController.m
//  AppsFlyerDemoIos
//
//  Created by Avidly on 2017/2/16.
//  Copyright © 2017年 Avidly. All rights reserved.
//

#import "ViewController.h"
#import <AppsFlyerLib/AppsFlyerTracker.h>
#import <AdSupport/AdSupport.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    NSLog(@"adId: %@", adId);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)LoginClick:(id)sender {
    [[AppsFlyerTracker sharedTracker] trackEvent:AFEventLogin withValues:@{AFEventParam1:@123}];
}

- (IBAction)PassClick:(id)sender {
    [[AppsFlyerTracker sharedTracker] trackEvent:AFEventLevelAchieved withValues:@{AFEventParamLevel:@9, AFEventParamScore:@100}];
}

- (IBAction)PurchaseClick:(id)sender {
    [[AppsFlyerTracker sharedTracker] trackEvent:AFEventPurchase withValues:@{
                                                                              AFEventParamContentId:@"1234567",
                                                                              AFEventParamContentType:@"category_a",
                                                                              AFEventParamRevenue:@200,
                                                                              AFEventParamCurrency:@"USD"}];
}

@end
