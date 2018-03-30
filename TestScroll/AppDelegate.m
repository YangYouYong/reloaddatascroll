
#import "AppDelegate.h"

#import "ViewController.h"
#import "ViewController2.h"

@interface AppDelegate ()

@property (nonatomic, strong) UITabBarController *rootTab;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController* garageVC = [[ViewController alloc]init];
    garageVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:NSLocalizedString(@"Garage",nil)
                                                        image:nil
                                                selectedImage:nil];
    
    ViewController2* discoverVC = [[ViewController2 alloc]init];
    discoverVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:NSLocalizedString(@"Discover",nil)
                                                          image:nil
                                                  selectedImage:nil];
    
    self.rootTab = [[UITabBarController alloc] init];
    self.rootTab.viewControllers = @[garageVC,discoverVC];
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:self.rootTab];
    self.window.rootViewController = navc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
