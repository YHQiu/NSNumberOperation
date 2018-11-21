//
//  ViewController.m
//  NSNumberOperation
//
//  Created by 邱弘宇 on 2018/3/3.
//  Copyright © 2018年 邱弘宇. All rights reserved.
//

//重新定义有效精度
#define __custom_nsnumber_operation_precisionlength_define__
/**
 计算过程中的精度
 */
#define kPrecisionLength NSDecimalMaxSize

#import "NSNumber+Operation.h"

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)add:(id)sender {
    [self.view endEditing:YES];
    self.resultLabel.text = [N(self.text1.text).add((NSNumber *)self.text2.text) stringValue];
}
- (IBAction)mul:(id)sender {
    [self.view endEditing:YES];
    self.resultLabel.text = [N(self.text1.text).sub((NSNumber *)self.text2.text) stringValue];
}
- (IBAction)sub:(id)sender {
    [self.view endEditing:YES];
    self.resultLabel.text = [N(self.text1.text).mul((NSNumber *)self.text2.text) stringValue];
}
- (IBAction)div:(id)sender {
    [self.view endEditing:YES];
    self.resultLabel.text = [N(self.text1.text).div((NSNumber *)self.text2.text) stringValue];
}
- (IBAction)addSubMulDiv:(id)sender {
    [self.view endEditing:YES];
    NSNumber *num2 = (NSNumber *)self.text2.text;
    self.resultLabel.text = [N(self.text1.text).add(num2).sub(num2).mul(num2).div(num2).scale2() stringValue];
}


@end
