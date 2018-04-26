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

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification:) name:@"itemCellClicked" object:nil];
    
    return self;
}

- (void) receiveNotification: (NSNotification *) notificattion {
    if ([[notificattion name] isEqualToString:@"itemCellClicked"]) {
        NSString *value = [notificattion object];
        if (value) {
            self.valueLabel.text = value;
        }
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

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
    
//      float x = array ? container.frame.size.width : -container.frame.size.width;
//    itemstableView = [[ItemsTableViewViewController alloc] initWithFrame:CGRectMake(x, 0, container.frame.size.width, container.frame.size.height) andArray:array];
//
//    [container addSubview: itemstableView.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
