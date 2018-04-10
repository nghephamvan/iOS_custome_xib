//
//  ItemView.m
//  Test
//
//  Created by Nghe Pham on 4/10/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

}

- (void) awakeFromNib {
    [super awakeFromNib];
}

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initCustom];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initCustom];
    }
    return self;
}

- (void) initCustom {
    [[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:self options:nil];
    [self.containerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self addSubview:self.containerView];
    self.containerView.frame = self.bounds;
}



@end
