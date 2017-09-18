//
//  cblpViewController.m
//  mapLoc
//
//  Created by Admin on 18.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "cblpViewController.h"

@interface cblpViewController ()

@end

@implementation cblpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches){
        CGPoint pt = [touch  locationInView:_cblpMap];
        CLLocationCoordinate2D coord= [_cblpMap convertPoint:pt toCoordinateFromView:_cblpMap];
        
        /*NSLog ([NSString stringWithFormat:@"lat=%f long =%f",coord.latitude,coord.longitude]);*/
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
