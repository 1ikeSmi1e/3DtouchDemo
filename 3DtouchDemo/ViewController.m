//
//  ViewController.m
//  3DtouchDemo
//
//  Created by 首控微金财富 on 2018/1/31.
//  Copyright © 2018年 PDZhou. All rights reserved.
//

#import "ViewController.h"
#import "BigImageController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    if (iOS9Later) {
    
        [self registerForPreviewingWithDelegate:self sourceView:self.imgV];
//    }
}
//peek(预览)
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    //获取按压的cell所在行，[previewingContext sourceView]就是按压的那个视图
    BigImageController *photosViewController = [[BigImageController alloc] init];
    photosViewController.preferredContentSize = CGSizeMake(0.0f, 500);
    //调整不被虚化的范围，按压的那个cell不被虚化（轻轻按压时周边会被虚化，再少用力展示预览，再加力跳页至设定界面）
    previewingContext.sourceRect = self.imgV.frame;
    return photosViewController;
}
//pop（按用点力进入）
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
//    [self presentViewController:viewControllerToCommit animated:NO completion:nil];
        [self showViewController:viewControllerToCommit sender:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
