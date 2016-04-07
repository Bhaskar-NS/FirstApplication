//
//  ViewController.m
//  DemoApp
//
//  Created by test on 4/4/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *NameTxt;
@property (strong, nonatomic) IBOutlet UILabel *NameLabel;
@property (nonatomic,strong) NSString *Nme;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonAction:(id)sender {
    
     self.Nme=self.NameTxt.text;
    self.NameLabel.text=[NSString stringWithFormat:@"Hello %@",self.Nme];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    self.Nme=self.NameTxt.text;
    return YES;
    
}
@end
