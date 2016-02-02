//
//  NSDictionary+DMPExtensions.m
//  DiffMatchPatch
//
//  Created by Nick Ager on 02/02/2016.
//
//

#import "NSDictionary+DMPExtensions.h"

#import "NSString+UnicharUtilities.h"

@implementation NSDictionary (DMPExtensions)

- (id)diff_objectForIntegerKey:(NSInteger)keyInteger
{
    return self[@(keyInteger)];
}

- (id)diff_objectForUnsignedIntegerKey:(NSUInteger)keyUInteger
{
    return self[@(keyUInteger)];
}

- (id)diff_objectForUnicharKey:(unichar)aUnicharKey
{
    return self[[NSString diff_stringFromUnichar:aUnicharKey]];
}


- (NSInteger)diff_integerForKey:(id)aKey
{
    return ((NSNumber *)self[aKey]).integerValue;
}

- (NSUInteger)diff_unsignedIntegerForKey:(id)aKey
{
    return ((NSNumber *)self[aKey]).unsignedIntegerValue;
}

- (NSInteger)diff_integerForIntegerKey:(NSInteger)keyInteger
{
    return ((NSNumber *)self[@(keyInteger)]).integerValue;
}

- (NSUInteger)diff_unsignedIntegerForUnicharKey:(unichar)aUnicharKey
{
    return ((NSNumber *)[self diff_objectForUnicharKey:aUnicharKey]).unsignedIntegerValue;
}


- (BOOL)diff_containsObjectForKey:(id)aKey
{
    return (self[aKey] != nil);
}

- (BOOL)containsObjectForIntegerKey:(NSInteger)keyInteger
{
    return (self[@(keyInteger)] != nil);
}

- (BOOL)diff_containsObjectForUnicharKey:(unichar)aUnicharKey
{
    return ([self diff_objectForUnicharKey:aUnicharKey] != nil);
}

@end
