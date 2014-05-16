//
//  HomeAct.m
//  slidemenu
//
//  Created by lance on 14-5-16.
//  Copyright (c) 2014年 lance. All rights reserved.
//

#import "HomeAct.h"
#import "NextAct.h"

@interface HomeAct ()

-(IBAction)nextPage:(id)sender;

@end

@implementation HomeAct

//代码实现的跳转
-(IBAction)nextPage:(id)sender
{
    UIStoryboard *mainStoryboard=[UIStoryboard  storyboardWithName:@"Main_iPhone" bundle:nil];
    NextAct * act=[mainStoryboard instantiateViewControllerWithIdentifier:@"NextAct"];
    [self.navigationController pushViewController:act animated:YES];
}

//传递数据需要覆盖的方法---
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //这里需要用segue标识符判断---这里体现了标识符的作用
    if ([segue.identifier isEqualToString:@"NextAct"]) {
        NextAct *destVC=segue.destinationViewController;
        destVC.segueData=@"传递参数";
    }
}


//三、Storyboard的创建
//你可以用InterfaceBuilder 去为你的应用程序创建一个Stroyboard,一般来说一个应用使用一个 Storyboard就够了，但是如果你想创建多个也是可以的，只要你愿意。一个 Stroyboard应该至少含有一个ViewController。
//在iPhone中，对于每一个在Storyboard的ViewController都管理着一个scene,每个scene又管理着screen上的东东，但对于iPad来说，多个scene可以同时呈现在一个screen上。你可以从library中拖拽viewController到你的Storyboard上。
//当你想关联两个viewController时，你可以按着control键，用鼠标从一个ViewController中的button,table view cell…拖拽连接到另一个你想跳转到的ViewController,这样就创建了一个segue,不要忘记设置identifier哦。
//
//四、 Scene之间的数据传递
//当你从当前 scene中触发一个segue的时候，系统会自动调用prepareForSegue:sender:这个方法。如果你想从一个界面切换到里另一个界面的时候传递数据,你应该override这个方法。
//A---》B
//想把数据  NSString A_data   从AController传到BController，则在BController中
//@property 一个NSString data
//然后在AController中添加方法
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    NSLog(@"The segue id is %@", segue.identifier );
//    UIViewController *destination = segue.destinationViewController;
//    if ([destination respondsToSelector:@selector(setData:)])
//    {
//        [destination setValue:@"这是要传递的数据" forKey:@"data"];
//    }
//}
//之后，Bcontroller中的data属性，就接收到数据了。
//
//五、ViewController之间的跳转
//1、如果在 Storyboard中当前的 ViewController和要跳转的ViewController之间的segue存在，则可以执行performSegueWithIdentifier:sender:这个方法实现跳转。
//2、如果目标ViewController存在Storyboard中，但是没有segue。你可以通过UIStoryboard的instantiateViewControllerWithIdentifier:这个方法获取到它，然后再用你想要的方式实现跳转，如：压栈。
//3、如果目标ViewController不存在，那就去创建它吧。








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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}
- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

@end
