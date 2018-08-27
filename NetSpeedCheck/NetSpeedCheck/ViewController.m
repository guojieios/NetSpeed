//
//  ViewController.m
//  NetSpeedCheck
//
//  Created by 郭杰 on 2018/8/27.
//  Copyright © 2018年 郭杰. All rights reserved.
//

#import "ViewController.h"
#import "NetSpeedCheck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *downloadLabel;
@property (weak, nonatomic) IBOutlet UILabel *uploadLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//     开始监控网速
    [[NetSpeedCheck shareNetworkSpeed] startCheckNet];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(checkDownloadNetSpeed:) name:GJDownloadNetworkSpeedNotificationKey object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(checkUploadNetSpeed:) name:GJDownloadNetworkSpeedNotificationKey object:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - 下行速度
-(void)checkDownloadNetSpeed:(NSNotification *)notification {
    
    self.downloadLabel.text = [NSString stringWithFormat:@"下行速度：%@ ",notification.object[@"NetSpeed"]];
    
    
}
#pragma mark - 上行速度
-(void)checkUploadNetSpeed:(NSNotification *)notification {
    
    self.uploadLabel.text = [NSString stringWithFormat:@"上行速度：%@ ",notification.object[@"NetSpeed"]];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
