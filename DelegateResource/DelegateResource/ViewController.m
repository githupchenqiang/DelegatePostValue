//
//  ViewController.m
//  DelegateResource
//
//  Created by chenq@kensence.com on 14/7/8.
//  Copyright © 2014年 chenq@kensence.com. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolViewController.h"
@interface ViewController ()<PassingValueDelegate>
@property (nonatomic ,strong)UILabel *labe;
@property (nonatomic ,strong)NSString *string;


@end

@implementation ViewController

- (void)viewDidLoad {

    self.view.backgroundColor = [UIColor whiteColor];
    _labe = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    _labe.backgroundColor = [UIColor cyanColor];
//    _labe.text = @"2344";
   
//        self.labe = label;
     [self.view addSubview:_labe];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  
    ProtocolViewController *pro = [ProtocolViewController new];
    _labe.text = pro.text;
    pro.delegate = self;
    UINavigationController *mna = [[UINavigationController alloc]initWithRootViewController:pro];
    [self.navigationController presentViewController:mna animated:YES completion:nil];

}


- (void)showValueToDelegate:(id)text
{
     _labe.text =text;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
