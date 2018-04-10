//
//  Log.m
//  Test
//
//  Created by Nghe Pham on 4/6/18.
//  Copyright © 2018 Nghe Pham. All rights reserved.
//

#import "Log.h"

@implementation Log

- (void)w:(NSString *)msg { 
    NSLog(@"Warning: %@", msg);
}

- (void)i:(NSString *)msg { 
    NSLog(@"Info: %@", msg);
}

- (void)d:(NSString *)msg { 
    NSLog(@"Debug: %@", msg);;
}

- (void)v:(NSString *)msg { 
    NSLog(@"Verbose: %@", msg);;
}

- (void)e:(NSString *)msg { 
    NSLog(@"Error: %@", msg);;
}

@end
