//
//  OCMapperConfig.m
//  Parse Object
//
//  Created by Walter Gonzalez Domenzain on 29/11/15.
//  Copyright © 2015 Smartplace. All rights reserved.
//

#import "OCMapperConfig.h"
#import "OCMapper.h"
#import "Declarations.h"


@implementation OCMapperConfig
+ (void)configure {
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Maping **********************/
    [inCodeMappingProvider mapFromDictionaryKey:@"zones" toPropertyKey:@"zones"
                                 withObjectType:[ZonesObject class] forClass:[ObjectResponse class]];
    
    [inCodeMappingProvider mapFromDictionaryKey:@"weather" toPropertyKey:@"weather"
                                 withObjectType:[WeatherObject class] forClass:[WeatherResponse class]];
    
    [inCodeMappingProvider mapFromDictionaryKey:@"description" toPropertyKey:@"weather_description"
                                 withObjectType:[NSString class] forClass:[WeatherObject class]];
}
@end
