//
//  MySHKConfigurator.m
//  iCongress
//
//  Created by Robert Gordan on 12/6/14.
//  Copyright (c) 2014 Holworthy17. All rights reserved.
//

#import "MySHKConfigurator.h"

@implementation MySHKConfigurator

- (NSString*)appName {
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleDisplayName"];
}

- (NSString*)appURL {
    return @"http://example.com";
}
- (NSString*)facebookAppId {
    return @"1569135993322191";
}

- (NSString*)twitterConsumerKey {
    return @"Alg6CrzlzttpUtBPnFXHLkQJQ";
}

- (NSString*)twitterSecret {
    return @"5RYHtfBwlhJ30kEB8MMoX56fSlP2v522bgilMyUKbToiDDqv0D";
}
// You need to set this if using OAuth, see note above (xAuth users can skip it)
- (NSString*)twitterCallbackUrl {
    return @"http://www.thisisaurl.com";
}
@end
