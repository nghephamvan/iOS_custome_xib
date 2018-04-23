//
//  ItemsTableViewViewController.h
//  Test
//
//  Created by Nghe Pham on 4/12/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsTableViewViewController : UITableViewController

- (id) initWithFrame:(CGRect)frame andArray:(NSArray *)array;

- (void) reloadTable;

@end
