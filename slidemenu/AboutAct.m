//
//  AboutAct.m
//  slidemenu
//
//  Created by lance on 14-5-16.
//  Copyright (c) 2014年 lance. All rights reserved.
//

#import "AboutAct.h"

@interface AboutAct ()

@end

@implementation AboutAct

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    UIBarButtonItem* leftButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_back"] style:UIBarButtonItemStylePlain target:self action:@selector(backAction)];
    self.navigationItem.leftBarButtonItem=leftButtonItem;
}

-(void) backAction
{
    [[SlideNavigationController sharedInstance] popViewControllerAnimated:YES];
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
