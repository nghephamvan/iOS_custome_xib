//
//  ViewController.m
//  Test
//
//  Created by Nghe Pham on 4/6/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import "ViewController.h"
#import "Utils/Log.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString * const cellIdentify = @"Cell";
@synthesize listLog;
@synthesize array;
@synthesize itemstableView;
@synthesize container;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.

    listLog = [[NSMutableArray alloc] init];
    Log *log = [[Log alloc] init];
    
    [listLog addObject:log];
    [listLog addObject:log];
    [listLog addObject:log];
    [listLog addObject:log];
    
    for (Log *item in listLog) {
        [item e:@"Hwllo world "];
    }
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    array = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
      float x = array ? container.frame.size.width : -container.frame.size.width;
    itemstableView = [[ItemsTableViewViewController alloc] initWithFrame:CGRectMake(x, 0, container.frame.size.width, container.frame.size.height) andArray:array];
    
    [container addSubview: itemstableView.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
