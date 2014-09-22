//
//  _rp5StartController.m
//  rp5_mobile
//
//  Created by ClevMind on 12.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5StartController.h"

@interface _rp5StartController ()

@end

@implementation _rp5StartController

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
    // Custom the tab bar
    //[[UITabBarItem appearance] ]
    
    //[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,nil] forState:UIControlStateNormal];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:0.5]} forState:UIControlStateNormal];
    
   
    
    // do something, e.g. set the background color to red
   // newView.backgroundColor = [UIColor redColor];
    //newView = weatherNowController.view;
    //[self addChildViewController:weatherNowController];
    // [self.view addSubview:newView];
    // add the new view as a subview to an existing one (e.g. self.view)
    
    /*[weatherNowController willMoveToParentViewController:self];
    [self.view addSubview:weatherNowController.view];
    [self addChildViewController:weatherNowController];
    [weatherNowController didMoveToParentViewController:self];*/
    

   // _rp5DynamicViewController * dynamicView = [_rp5DynamicViewController new];
    //_rp5SettingsController *settings = [_rp5SettingsController new];
    
    //dynamicView.view = settings.view;
   // [dynamicView viewDidLoad];
        //[[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:1 green:1 blue:0 alpha:1]];

    //[self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"item_seleted.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"item_unselected.png"]];
   // [self.tabBarItem initWithTitle:@"" image:[UIImage imageNamed:@"item_seleted.png"]  tag:0];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    _rp5ViewController *weatherNowController = [_rp5ViewController new];
    //_rp5DynamicViewController *dynamic = [_rp5DynamicViewController new];
    _rp5SettingsController *settings = [_rp5SettingsController new];
    NSLog(@"TEST%@", NSStringFromCGSize(weatherNowController.view.frame.size));
    
    //UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(10,300,500,500)];
    //UIView *newView2 = [[UIView alloc] initWithFrame:CGRectMake(300,300,500,500)];
    
   // UIView * NOW = [weatherNowController.view initWithFrame:CGRectMake(300,300,500,500)];
    
    
   // CGRect screen = [[UIScreen mainScreen] bounds];
   // CGFloat width = CGRectGetWidth(screen);
    //Bonus height.
   // CGFloat height = CGRectGetHeight(screen);
    //CGFloat width = self.view.frame.size.width;
   // CGFloat width = CGRectGetWidth(self.view.bounds);
    
   //NSLog(@"My view's frame is: %@", NSStringFromCGRect(self.view.frame));
    
    // do something, e.g. set the background color to red
    //newView.backgroundColor = [UIColor redColor];
   // newView2.backgroundColor = [UIColor blueColor];
    
    
    /*
     ПРОВЕРКА НА ПОВОРОТ ДИСПЛЕЯ
    UIDeviceOrientation currOrientation = [[UIDevice currentDevice] orientation];
    if(UIDeviceOrientationIsLandscape(currOrientation))
    {
        // do something if it is landscape
        NSLog(@"lANDSKAPE");
    }
    else
    {
        NSLog(@"PORTRAIT");
        // we're in portrait!
    }
        */
    
    
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.dynamicView.frame.size.width, self.dynamicView.frame.size.height)];
    
    [self.view addSubview:containerView];
    
    UIView *fromView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, containerView.frame.size.width, containerView.frame.size.height)];
    fromView.backgroundColor = [UIColor blueColor];
    UIView *toView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.dynamicView.frame.size.width, self.dynamicView.frame.size.height)];
    containerView.backgroundColor = [UIColor purpleColor];
    toView.backgroundColor = [UIColor redColor];
    //toView = weatherNowController.view;
    [self.dynamicView addSubview:containerView];
    //[containerView addSubview:fromView];
    
    [CATransaction flush];
    
    [UIView transitionFromView:containerView toView:weatherNowController.view duration:1.4f options:UIViewAnimationOptionTransitionCrossDissolve completion:NULL];
    
    
    //_rp5StartController *NVC = [self.storyboard instantiateViewControllerWithIdentifier:@"weather_now"];
    //
    //[self presentViewController:NVC animated:YES completion:nil];
    
    
    //[self addChildViewController:weatherNowController];
    //[self.view addSubview:newView];
    
    /*[UIView transitionFromView:newView
                        toView:newView2
                        duration:0.2
                       options:UIViewAnimationOptionTransitionFlipFromRight
                 ];*/

    // UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(10,80,600,700)];
    //newView = settings.view;
    //[self presentViewController:weatherNowController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    /*(for item in tabBar) {
    
    }*/
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithRed:1 green:1 blue:1 alpha:1.0]} forState:UIControlStateNormal];
    if (item.tag == 0) {
        
        //_rp5ViewController * weatherNowController = [_rp5ViewController new];
       // self.dynamicView.window.rootViewController = weatherNowController;
        //[self.dynamicView.window makeKeyAndVisible];
   // [self performSegueWithIdentifier: @"weather_now"
                            //  sender: self.dynamicView.window.rootViewController];
    NSLog(@"Сейчас");
    }
    
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
