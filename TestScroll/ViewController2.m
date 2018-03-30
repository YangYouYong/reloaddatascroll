
#import "ViewController2.h"
#import "TestViewController.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, 200, 40)];
    [btn setTitle:@"Enter Test" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
}

-(void)test
{
    TestViewController *test = [TestViewController new];
    [self.navigationController pushViewController:test animated:YES];
    
}

@end
