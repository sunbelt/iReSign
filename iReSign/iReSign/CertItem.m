//
//  CertItem.m
//  iReSign
//
//  Created by Shane Craig on 1/20/16.
//  Copyright © 2016 nil. All rights reserved.
//

#import "CertItem.h"

@implementation CertItem

- (id)copyWithZone:(NSZone *)zone {
	CertItem *newItem = [[[self class] allocWithZone:zone] init];
	newItem->_name = [_name copyWithZone:zone];
	newItem->_sha1 = [_sha1 copyWithZone:zone];
	return newItem;
}

- (NSString *)description {
	return [NSString stringWithFormat:@"%@ %@", self.name, [[self.sha1 substringToIndex:8] lowercaseString]];
}

@end
