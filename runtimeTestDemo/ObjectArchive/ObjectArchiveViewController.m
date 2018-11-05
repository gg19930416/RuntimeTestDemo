//
//  ObjectArchiveViewController.m
//  runtimeTestDemo
//
//  Created by 郭刚 on 2018/10/31.
//  Copyright © 2018 郭刚. All rights reserved.
//

#import "ObjectArchiveViewController.h"
#import "ArchiveCat.h"

@interface ObjectArchiveViewController ()
@property (nonatomic,strong) ArchiveCat *anCat;
@property (nonatomic,copy) NSString *path;

@property (nonatomic,strong) UITextField *textField;

@property (nonatomic,strong) UIButton *submitBtn;
@end

@implementation ObjectArchiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.submitBtn];
    
    self.path = NSHomeDirectory();
    self.path = [NSString stringWithFormat:@"%@/anCat",self.path];
    self.anCat = [NSKeyedUnarchiver unarchiveObjectWithFile:self.path];
    
    if (!self.anCat) {
        self.anCat = [[ArchiveCat alloc] init];
    }
    self.textField.text = self.anCat.name;
    // Do any additional setup after loading the view.
}

- (UITextField *)textField {

    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.backgroundColor = [UIColor redColor];
        _textField.frame = CGRectMake(100, 100, 200, 40);
    }
    return _textField;
}

- (UIButton *)submitBtn {
    if (!_submitBtn) {
        _submitBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [_submitBtn setTitle:@"提交" forState:(UIControlStateNormal)];
        _submitBtn.backgroundColor = [UIColor blueColor];
        [_submitBtn addTarget:self action:@selector(submitBtnDidClicked:) forControlEvents:(UIControlEventTouchUpInside)];
        _submitBtn.frame = CGRectMake(100, CGRectGetMaxY(_textField.frame)+50, 100, 40);
    }
    return _submitBtn;
}

- (IBAction)submitBtnDidClicked:(UIButton *)sender {
    self.anCat.name = self.textField.text;
    
    [NSKeyedArchiver archiveRootObject:self.anCat toFile:self.path];
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
