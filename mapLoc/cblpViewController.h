//
//  cblpViewController.h
//  mapLoc
//
//  Created by Admin on 18.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface cblpViewController : UIViewController

@property (strong, nonatomic) IBOutlet MKMapView *cblpMap;

@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *longLabel;


@end
