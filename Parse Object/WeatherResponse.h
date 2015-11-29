//
//  WeatherResponse.h
//  Parse Object
//
//  Created by Alejandra B on 29/11/15.
//  Copyright © 2015 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherResponse : NSObject
@property (nonatomic,strong) NSString *base;
@property (nonatomic,strong) NSString *dt;
@property (nonatomic,strong) NSString *ID;

@end
