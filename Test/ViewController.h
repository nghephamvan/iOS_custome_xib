//
//  ViewController.h
//  Test
//
//  Created by Nghe Pham on 4/6/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utils/Log.h"
#import "ItemsTableViewViewController.h"

@interface ViewController : UIViewController

@property (nonatomic, copy) NSMutableArray *listLog;
@property (strong, nonatomic) IBOutlet UIView *container;
@property (nonatomic, strong) ItemsTableViewViewController *itemstableView;
@property (nonatomic, weak) NSArray *array;

@end
