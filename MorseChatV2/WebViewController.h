//
//  WebViewController.h
//  MorseChatV2
//
//  Created by Kenje Hofilena on 12/13/19.
//  Copyright © 2019 Kenje Hofilena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet WKWebView *webViewOutlet;

@end

NS_ASSUME_NONNULL_END
