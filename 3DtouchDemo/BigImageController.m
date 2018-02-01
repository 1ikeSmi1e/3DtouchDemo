//
//  BigImageController.m
//  3DtouchDemo
//
//  Created by 首控微金财富 on 2018/1/31.
//  Copyright © 2018年 PDZhou. All rights reserved.
//

#import "BigImageController.h"

@interface BigImageController ()

@end

@implementation BigImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems {

    UIPreviewAction *action = [UIPreviewAction actionWithTitle:@"操作一" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {

        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"提示" message:@"操作一点击" preferredStyle:UIAlertControllerStyleActionSheet];
        
        [alertCon addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
        
        [self presentViewController:alertCon animated:YES completion:nil];
    }];
    NSArray *actions = @[action];
    return actions;
}

@end
