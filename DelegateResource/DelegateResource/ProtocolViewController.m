//
//  ProtocolViewController.m
//  DelegateResource
//
//  Created by chenq@kensence.com on 14/7/8.
//  Copyright © 2014年 chenq@kensence.com. All rights reserved.
//

#import "ProtocolViewController.h"
#import "ViewController.h"

@interface ProtocolViewController ()
@property (nonatomic ,strong)UITextField *textString;

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    _textString = [[UITextField alloc]initWithFrame:CGRectMake(10, 100, 100, 30)];
    _textString.layer.borderColor = [UIColor blackColor].CGColor;
    _textString.layer.borderWidth = 0.2;
    [self.view addSubview:_textString];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 140, 50, 30);
    [button addTarget:self action:@selector(ButtongAction:) forControlEvents:UIControlEventTouchDown];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [self.view addSubview:button];
  
}

- (void)ButtongAction:(UIButton *)button
{
    [self.delegate showValueToDelegate:_textString.text];
    ViewController *view = [ViewController new];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
        //判断代理
//    if (self.delegate && [self.delegate respondsToSelector:@selector(viewController:didPassingValueWithInfo:)]) {
////        [self.delegate viewController:self didPassingValueWithInfo:self.view.backgroundColor];
//        [_delegate showValueToDelegate:@"传值"];
    
//    }
}
//
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    ViewController *view = [ViewController new];
//   
//    if (self.delegate && [self.delegate respondsToSelector:@selector(viewController:didPassingValueWithInfo:)]) {
//        //        [self.delegate viewController:self didPassingValueWithInfo:self.view.backgroundColor];
//        [_delegate showValueToDelegate:@"传值"];
//        
//    }
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
