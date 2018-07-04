//
//  ViewController.m
//  ScrollViewTask
//
//  Created by Наташа on 30.06.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView.backgroundColor = [UIColor orangeColor];
    self.scrollView.delegate = self;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (self.scrollView.contentOffset.x < 136) {
        self.myView.backgroundColor = [UIColor orangeColor];
    } else if (self.scrollView.contentOffset.x >= 136){
          self.myView.backgroundColor = [UIColor brownColor];
    }
    //NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset)); //while swiping to the right CGPoint is {136,0}
}

@end
