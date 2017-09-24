//
//  cblpViewController.m
//  mapLoc
//
//  Created by Admin on 18.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "cblpViewController.h"
#import <MapKit/MapKit.h>

@interface cblpViewController ()

@end

@implementation cblpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIBarButtonItem *addButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(actionAdd:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) actionAdd:(UIBarButtonItem*) sender {
    
    cblpMapAnnotation* annotation = [[cblpMapAnnotation alloc] init];
    
    annotation.title        = @"qwe";
    annotation.subtitle     = @"ewq";
    annotation.coordinate   = self.cblpMap.region.center;

    [self.cblpMap addAnnotation:annotation];
    
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[MKUserLocation class]]) {
        
        return nil;
        
    }
    
    static NSString* identifier = @"annotation";
    MKPinAnnotationView* pin = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    
    if (!pin) {
        pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        pin.animatesDrop = TRUE;
        pin.canShowCallout = TRUE;
        pin.draggable = TRUE;
    } else {
        pin.annotation = annotation;
        
    }
    return pin;
}

- (void) mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view didChangeDragState:(MKAnnotationViewDragState)newState fromOldState:(MKAnnotationViewDragState)oldState {

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    for (UITouch *touch in touches){
        CGPoint pt = [touch  locationInView:_cblpMap];
        CLLocationCoordinate2D coord= [_cblpMap convertPoint:pt toCoordinateFromView:_cblpMap];
        
        NSString *latCoord  = ([NSString stringWithFormat:@"%f",coord.latitude]);
        NSString *longCoord = ([NSString stringWithFormat:@"%f",coord.longitude]);
        
        self.latLabel.text = latCoord;
        self.longLabel.text = longCoord;
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
