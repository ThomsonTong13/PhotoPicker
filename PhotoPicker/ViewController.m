//
//  ViewController.m
//  PhotoPicker
//
//  Created by Thomson on 15/12/1.
//  Copyright © 2015年 KEMI. All rights reserved.
//

#import "ViewController.h"
#import "PhotoPickerViewController.h"
#import "PhotoPickerViewModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton *imagePickerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    imagePickerButton.frame = CGRectMake(0, 0, 44.0, 44.0);
    [imagePickerButton setImage:[UIImage imageNamed:@"image_picker"] forState:UIControlStateNormal];
    [imagePickerButton setImageEdgeInsets:UIEdgeInsetsMake(11.0, 0, 11.0, -22.0)];
    [imagePickerButton addTarget:self action:@selector(imagePicker:) forControlEvents:UIControlEventTouchUpInside];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:imagePickerButton];
}

#pragma mark - event response

- (void)imagePicker:(id)sender
{
    PhotoPickerViewController *picker = [[PhotoPickerViewController alloc] init];
    picker.viewModel = [[PhotoPickerViewModel alloc] initWithStatus:PhotoPickerViewShowStatusCameraRoll];

    [self presentViewController:picker animated:YES completion:nil];
}

@end
