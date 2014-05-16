//
//  MenuAct.m
//  slidemenu
//
//  Created by lance on 14-5-16.
//  Copyright (c) 2014年 lance. All rights reserved.
//

#import "MenuAct.h"
#import "HomeAct.h"
#import "SetAct.h"
#import "FeedbackAct.h"
#import "AboutAct.h"
#import "SlideNavigationController.h"


@interface MenuAct ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,retain) NSMutableArray * menuArr;

@end

@implementation MenuAct

@synthesize menuArr;

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
    menuArr=[[NSMutableArray alloc] initWithObjects:@"首页",@"设置",@"反馈",@"关于",@"退出登录", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return menuArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* identifier=@"Cell";
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text=[menuArr objectAtIndex:[indexPath row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIStoryboard * mainStoryboard=[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    UIViewController * control=nil;
    
    switch ([indexPath row]) {
        case 0://Storyboard ID 的作用
            control=[mainStoryboard instantiateViewControllerWithIdentifier:@"HomeAct"];
            break;
        case 1:
            control=[mainStoryboard instantiateViewControllerWithIdentifier:@"SetAct"];
            break;
        case 2:
            control=[mainStoryboard instantiateViewControllerWithIdentifier:@"FeedbackAct"];
            break;
        case 3:
            control=[mainStoryboard instantiateViewControllerWithIdentifier:@"AboutAct"];
            break;
        case 4:
            [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
            return;
        default:
            break;
    }
    
    [[SlideNavigationController sharedInstance] switchToViewController:control withCompletion:nil];
}


@end
