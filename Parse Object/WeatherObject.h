//
//  WeatherObject.h
//  Parse Object
//
//  Created by Alejandra B on 29/11/15.
//  Copyright © 2015 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherObject : NSObject
@property (nonatomic,strong) NSString *ID;
@property (nonatomic,strong) NSString *main;
@property (nonatomic,strong) NSString *weather_description;
@property (nonatomic,strong) NSString *icon;

@end
