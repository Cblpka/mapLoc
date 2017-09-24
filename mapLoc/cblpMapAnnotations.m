//
//  cblpMapAnnotations.m
//  mapLoc
//
//  Created by Admin on 18.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "cblpMapAnnotations.h"

@implementation cblpMapAnnotations

@synthesize coordinate;

- (id)initWithLocation:(CLLocationCoordinate2D)coord {
    self = [super init];
    if (self) {
        _pointCoordinates	 = coord;
    }
    return self;
}

@end
