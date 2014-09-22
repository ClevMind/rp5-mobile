//
//  _rp5DynamicViewController.m
//  rp5_mobile
//
//  Created by ClevMind on 12.09.14.
//  Copyright (c) 2014 rp5. All rights reserved.
//

#import "_rp5DynamicViewController.h"

@interface _rp5DynamicViewController ()

@end

@implementation _rp5DynamicViewController

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
    //_rp5DynamicViewController *startController = [_rp5DynamicViewController new];
    
    
     // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
   // _rp5ViewController * weatherNowController = [_rp5ViewController new];
    //[self transitionFromViewController: self.view.window.rootViewController
                      //toViewController: weatherNowController
                           //   duration: .25
                              // options: UIViewAnimationOptionTransitionCurlUp
    // ];
   // [self performSegueWithIdentifier: @"weather_now" sender: nil];
    _rp5ViewController * weatherNowController = [_rp5ViewController new];
    //_rp5DynamicViewController *dynamic = [_rp5DynamicViewController new];
    
    //[self addChildViewController:weatherNowController];
    //[self.view addSubview:weatherNowController.view];
    
    //UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(10,10,100,100)];
    
    // do something, e.g. set the background color to red
    //newView.backgroundColor = [UIColor redColor];
    
    // add the new view as a subview to an existing one (e.g. self.view)
    
    [weatherNowController willMoveToParentViewController:self];
    [self.view addSubview:weatherNowController.view];
    [self addChildViewController:weatherNowController];
    [weatherNowController didMoveToParentViewController:self];
    
    
    /*self.view.frame = CGRectMake(0,0,520,480-48);
    [self addChildViewController:weatherNowController];
    [self.view addSubview:weatherNowController.view];*/
    //weatherNowController.clipToBounds=YES;
    //self.view.frame = weatherNowController.view.frame;
    //[self performSegueWithIdentifier: @"weather_now" sender: nil];
    //[self presentViewController:weatherNowController animated:YES completion:nil];
   // _rp5ViewController *viewController = (_rp5ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"YourViewControllerIdentifier"];
  //  [dynamic presentViewController:weatherNowController animated:YES completion:nil];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"FUCK");
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
