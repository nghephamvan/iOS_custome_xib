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
@synthesize listLog;

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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
