//
//  NSDictionary+DMPExtensions.h
//  DiffMatchPatch
//
//  Created by Nick Ager on 02/02/2016.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DMPExtensions)
- (id)diff_objectForIntegerKey:(NSInteger)keyInteger;
- (id)diff_objectForUnsignedIntegerKey:(NSUInteger)keyUInteger;
- (id)diff_objectForUnicharKey:(unichar)aUnicharKey;

- (NSInteger)diff_integerForKey:(id)aKey;
- (NSUInteger)diff_unsignedIntegerForKey:(id)aKey;
- (NSInteger)diff_integerForIntegerKey:(NSInteger)keyInteger;
- (NSUInteger)diff_unsignedIntegerForUnicharKey:(unichar)aUnicharKey;

- (BOOL)diff_containsObjectForKey:(id)aKey;
- (BOOL)diff_containsObjectForUnicharKey:(unichar)aUnicharKey;
@end
