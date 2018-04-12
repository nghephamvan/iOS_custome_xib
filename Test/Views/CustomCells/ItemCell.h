//
//  ItemCell.h
//  Test
//
//  Created by Nghe Pham on 4/12/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *itemImage;
@property (weak, nonatomic) IBOutlet UILabel *itemName;
@property (weak, nonatomic) IBOutlet UIButton *ItemCheck;

@end
