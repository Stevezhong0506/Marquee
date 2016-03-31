//
//  ViewController.m
//  Marquee
//
//  Created by xin on 16/3/31.
//  Copyright © 2016年 LiuZeXin. All rights reserved.
//

#import "ViewController.h"
#import "Marquee.h"
@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController{
    UIScrollView * _scrollView;
    CADisplayLink * _link;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 100)];
    label.text = @"12312312312312312312312312312312312312312312312312312";
    
    UILabel * label2 = [[UILabel alloc] initWithFrame:CGRectMake(0,0,100,50)];
    label2.text = @"王猛王猛";
    label.backgroundColor = [UIColor blackColor];
    UILabel * label3 = [[UILabel alloc] initWithFrame:CGRectMake(0,0,200,120)];
    label3.text = @"g231231231231231231231231";
    label2.backgroundColor = [UIColor greenColor];
    label3.backgroundColor = [UIColor grayColor];
    
    Marquee * marquee = [[Marquee alloc] initWithFrame:CGRectMake(40, 64, 100, 120)];
    marquee.margin = 0;
    [marquee fire];
    marquee.isSingle = YES;
    marquee.views = [NSMutableArray arrayWithArray:@[label2]];
    [self.view addSubview:marquee];
    
    
}

- (void)animate{
    
    _scrollView.contentOffset = CGPointMake(_scrollView.contentOffset.x + 1, 0);
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if(_scrollView.contentOffset.x >= self.view.frame.size.width * 2){
        [_scrollView setContentOffset:CGPointMake(0, 0)];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
