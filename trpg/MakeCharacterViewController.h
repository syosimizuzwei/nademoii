//
//  MakeCharacterViewController.h
//  trpg
//
//  Created by Syotaro Shimizu on 2015/10/29.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeCharacterViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>



{

    IBOutlet UIScrollView* myScrollView;
    
    IBOutlet UITextField*strfield;
    IBOutlet UITextField*dexfield;
    IBOutlet UITextField*intfield;
    IBOutlet UITextField*confield;
    IBOutlet UITextField*appfield;
    IBOutlet UITextField*powfield;
    IBOutlet UITextField*sizfield;
    IBOutlet UITextField*edufield;
    IBOutlet UIPickerView*picker;
    int STR;
    int DEX;
    int INT;
    int CON;
    int APP;
    int POW;
    int SIZ;
    int SAN;
    int EDU;
    int idea;
    int fortune;
    int khowledge;
    int MAXSAN;
    int db;
    IBOutlet UITextField*name;
    IBOutlet UITextField*job;
    IBOutlet UITextField*school;
    IBOutlet UITextField*from;
    IBOutlet UITextField*Mentaldisorder;
    IBOutlet UITextField*age;
    
    
}
-(IBAction)roll;


@end
