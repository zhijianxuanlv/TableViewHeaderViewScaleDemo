//
//  ViewController.m
//  TableViewHeaderViewScaleDemo
//
//  Created by 罗成 on 16/3/18.
//  Copyright © 2016年 罗成. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerViewHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerViewLeft;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerViewRight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerViewTop;

@property (assign, nonatomic) CGFloat height;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.height = 250.f;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

//获取scrollview  contentoffset y
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY < 0) {
        self.headerViewTop.constant = offsetY;
        self.headerViewRight.constant = offsetY / 2;
        self.headerViewLeft.constant = offsetY / 2;
        self.headerViewHeight.constant = self.height + (- offsetY);
    }
}



@end
