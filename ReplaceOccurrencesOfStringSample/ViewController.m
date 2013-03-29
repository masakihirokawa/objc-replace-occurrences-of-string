//
//  ViewController.m
//  ReplaceOccurrencesOfStringSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //置換する文字列を生成する
  NSMutableString * str;
  str = [NSMutableString stringWithString:
         @"The Objective-C language"];
  
  //指定した範囲内の文字列を置き換える
  NSRange textSearchRange = NSMakeRange(0, [str length]);
  [str replaceOccurrencesOfString:@"language"
                       withString:@"Language"
                          options:NSCaseInsensitiveSearch
                            range:textSearchRange];
  
  NSLog(@"%@", str);
}

@end
