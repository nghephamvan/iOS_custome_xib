//
//  ItemsTableViewViewController.m
//  Test
//
//  Created by Nghe Pham on 4/12/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import "ItemsTableViewViewController.h"
#import "ItemCell.h"

@interface ItemsTableViewViewController () <UITableViewDelegate, UITableViewDataSource> {
     NSArray *contentData;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSMutableArray *listLog;

@end

@implementation ItemsTableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.tableView.estimatedRowHeight = 250;
    self.tableView.rowHeight = 250;
    [self.tableView setNeedsLayout];
    [self.tableView layoutIfNeeded];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self loadData];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) reloadTable
{
    [self.tableView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (id) initWithFrame:(CGRect)frame andArray:(NSArray *)array {
    self = [super initWithNibName:@"ItemsTableViewViewController" bundle:nil];
    if (self) {
        self.view.frame = frame;
        if (array) {
            contentData = array;
        } else {
            [self loadData];
        }
    }
    
    return self;
}

- (void) loadData {
    NSError *error;
    [self.view layoutIfNeeded];
    contentData = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
    
    if (!error) {
        [self.tableView reloadData];
    } else {
        
    }
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contentData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"abcxyz";
    
    ItemCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"ItemCell" bundle:nil] forCellReuseIdentifier:identifier];
        
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    
    return cell;
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(ItemCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell.itemImage setImage:[UIImage imageNamed:@"view3"]];
    [cell.itemName setText: [contentData objectAtIndex:indexPath.row]];
    
    cell.ItemCheck.tag = indexPath.row;
    [cell.ItemCheck addTarget:self action:@selector(btnShowLog:) forControlEvents:UIControlEventTouchUpInside];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

- (IBAction) btnShowLog:(id)sender {
    NSInteger tag = [sender isKindOfClass:[UIButton class]] ? [sender tag] : [[sender view] tag];
    
    NSString *temp = [contentData objectAtIndex:tag];
    NSLog(@"Item touch: %@", temp);
}

@end
