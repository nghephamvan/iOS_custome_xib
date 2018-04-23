//
//  ViewController.m
//  Test
//
//  Created by Nghe Pham on 4/6/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import "ViewController.h"
#import "Utils/Log.h"
#import "ItemCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

static NSString * const cellIdentify = @"Cell";
@synthesize listLog;
@synthesize array;
@synthesize itemstableView;
@synthesize container;
@synthesize tableView;

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
    
    array = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
}

- (void)loadView {
    [super loadView];
    
    UINib *itemCell = [UINib nibWithNibName:@"ItemCell" bundle:nil];
    [tableView registerNib:itemCell forCellReuseIdentifier:@"abcxyz"];
    tableView.rowHeight = 150;
    tableView.estimatedRowHeight = 150;
    
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

# pragma mark Table Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abcxyz" forIndexPath:indexPath];
    
    if(!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"ItemCell" bundle:nil] forCellReuseIdentifier:@"abcxyz"];
        
        [[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:self options:nil];
        
        cell = [tableView dequeueReusableCellWithIdentifier:@"abcxyz"];
    }
    
    [cell.itemImage setImage:[UIImage imageNamed:@"view3"]];
    cell.itemName.text = @"abc";
    
    cell.ItemCheck.tag = indexPath.row;
    [cell.ItemCheck addTarget:self action:@selector(btnShowLog:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (IBAction) btnShowLog:(id)sender {
    NSInteger tag = [sender isKindOfClass:[UIButton class]] ? [sender tag] : [[sender view] tag];
    NSString *temp = array[tag];
    NSLog(@"Item touch: %@", temp);
}

@end
