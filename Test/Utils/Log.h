//
//  Log.h
//  Test
//
//  Created by Nghe Pham on 4/6/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Log : NSObject

- (void)e:(NSString *) msg;
- (void)w:(NSString *) msg;
- (void)i:(NSString *) msg;
- (void)d:(NSString *) msg;
- (void)v:(NSString *) msg;

@end
