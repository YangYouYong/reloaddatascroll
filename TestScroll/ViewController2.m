
#import "ViewController2.h"
#import "TestViewController.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, 200, 40)];
    btn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
}

-(void)test
{
    TestViewController *test = [TestViewController new];
    [self.navigationController pushViewController:test animated:YES];
    
}

@end
