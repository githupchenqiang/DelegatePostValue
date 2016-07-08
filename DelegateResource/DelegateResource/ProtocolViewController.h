//
//  ProtocolViewController.h
//  DelegateResource
//
//  Created by chenq@kensence.com on 14/7/8.
//  Copyright © 2014年 chenq@kensence.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ProtocolViewController;


@protocol PassingValueDelegate<NSObject>
@optional

- (void)viewController:(ProtocolViewController *)protocol didPassingValueWithInfo:(id)info;
- (void)showValueToDelegate:(id)text;

@required

@end;


@interface ProtocolViewController : UIViewController

@property (nonatomic ,strong)NSString *text;
@property (nonatomic ,assign)id <PassingValueDelegate>delegate;

@end
