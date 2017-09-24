//
//  cblpMapAnnotations.h
//  mapLoc
//
//  Created by Admin on 18.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@interface cblpMapAnnotations : NSObject <MKAnnotation>

@property (assign, nonatomic) CLLocationCoordinate2D pointCoordinates;

- (id)initWithLocation:(CLLocationCoordinate2D)coord;

@property (nonatomic, copy) NSString *latTitle;
@property (nonatomic, copy) NSString *longSubTitle;


@end
