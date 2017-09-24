//
//  cblpAnnotationMap.h
//  mapLoc
//
//  Created by Admin on 20.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface cblpAnnotationMap : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (NSString *) title;
- (NSString *) subtitle;

@end
