//
//  ViewController.m
//  ClipixSDKExample
//
//  Created by Canberk Eftal Ersoy on 6/10/15.
//  Copyright (c) 2015 Canberk Eftal Ersoy. All rights reserved.
//

#import "ViewController.h"
#import <ClipixIOSSDK/ClipixIOSSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ClipButton *button = [[ClipButton alloc]initForGray];
    button.frame = CGRectMake(50, 60, button.frame.size.width, button.frame.size.height);
    
    ClipButton *button2 = [[ClipButton alloc]initForWhite];
    button2.frame = CGRectMake(50, 140, button.frame.size.width, button.frame.size.height);
    
    ClipButton *button3 = [[ClipButton alloc]initForOrange];
    button3.frame = CGRectMake(50, 220, button3.frame.size.width, button3.frame.size.height);
    
    [self.view addSubview:button];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    
    [button addTarget:self action:@selector(shareClipixPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(shareClipixProductPressed:) forControlEvents:UIControlEventTouchUpInside];
    [button3 addTarget:self action:@selector(shareClipixPressed:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)shareClipixPressed:(id)sender{
    
    
    //This is for a normal share if you want to share a product you can use other method
    [[ClipixSDKSingleton shareManager]shareWithURL:@"http://www.clipix.com/" description:@"Test only Image" imageURL:@"http://i.imgur.com/YKMyrrK.png" customScheme:nil];
    [[ClipixSDKSingleton shareManager]shareWithURL:<#(NSString *)#> description:<#(NSString *)#> imageURL:<#(NSString *)#> price:<#(NSNumber *)#> currency:<#(CXCurrency)#> customScheme:<#(NSString *)#>];
    
    
}

-(IBAction)shareClipixProductPressed:(id)sender{
    
    
    //This is for a normal share if you want to share a product you can use other method
    [[ClipixSDKSingleton shareManager]shareWithURL:@"http://www.clipix.com/" description:@"Test only Image" imageURL:@"http://i.imgur.com/YKMyrrK.png" price:@20.0 currency:kCXCurrencyUSD customScheme:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
