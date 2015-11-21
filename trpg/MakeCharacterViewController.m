//
//  MakeCharacterViewController.m
//  trpg
//
//  Created by Syotaro Shimizu on 2015/10/29.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "MakeCharacterViewController.h"

@interface MakeCharacterViewController ()

@end

@implementation MakeCharacterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    picker.dataSource=self;
    picker.showsSelectionIndicator=YES;
    
//    myScrollView.delegate = self;
    [myScrollView setScrollEnabled:YES];
    [myScrollView setContentSize:CGSizeMake(320, 1200)];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [
     textField resignFirstResponder];
    return YES;
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{if(component == 0){
    return 100;  // 1列目は100行
}else{
    return 3;  // 2列目は3行
}
    
}

-(IBAction)roll{
    STR=3+arc4random()%15;
    DEX=3+arc4random()%15;
    INT=3+arc4random()%15;
    CON=3+arc4random()%15;
    APP=3+arc4random()%15;
    POW=3+arc4random()%15;
    SIZ=3+arc4random()%15;
    EDU=6+arc4random()%15;
    strfield.text=[NSString stringWithFormat:@"%d",STR];
    dexfield.text=[NSString stringWithFormat:@"%d",DEX];
    intfield.text=[NSString stringWithFormat:@"%d",INT];
    confield.text=[NSString stringWithFormat:@"%d",CON];
    appfield.text=[NSString stringWithFormat:@"%d",APP];
    powfield.text=[NSString stringWithFormat:@"%d",POW];
    sizfield.text=[NSString stringWithFormat:@"%d",SIZ];
    edufield.text=[NSString stringWithFormat:@"%d",EDU];
    
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
