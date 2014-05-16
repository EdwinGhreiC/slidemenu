//
//  SetAct.m
//  slidemenu
//
//  Created by lance on 14-5-16.
//  Copyright (c) 2014年 lance. All rights reserved.
//

#import "SetAct.h"

@interface SetAct ()

@end

@implementation SetAct

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return NO;
}
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"设置";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
