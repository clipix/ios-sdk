//
//  ClipixSDK.h
//  ClipixSDKTest
//
//  Created by Canberk Eftal Ersoy on 5/27/15.
//  Copyright (c) 2015 Canberk Eftal Ersoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClipButton.h"
#import "CXCurrency.h"
@interface ClipixSDKSingleton : NSObject
+ (id)shareManager;
- (void)shareWithURL:(NSString*)url
         description:(NSString*)description
            imageURL:(NSString*)imageURL
               price:(NSNumber*)price
            currency:(CXCurrency)currency
        customScheme:(NSString*)customScheme;

- (void)shareWithURL:(NSString*)url
         description:(NSString*)description
            imageURL:(NSString*)imageURL
        customScheme:(NSString*)customScheme;
@end


