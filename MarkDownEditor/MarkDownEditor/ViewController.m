//
//  ViewController.m
//  MarkDownEditor
//
//  Created by allen on 8/12/16.
//  Copyright © 2016 allen. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize btn_save = _btn_save;
@synthesize tv_EditorView = _tv_EditorView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    _btn_save.highlighted = YES;
    
    ts =[_tv_EditorView textStorage];
    ts.delegate = self;
    _tv_EditorView.delegate = self;
    
    [NSThread detachNewThreadSelector:@selector(findString:) toTarget:self withObject:@"###"];
    
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
    
    
}

-(void)textStorage:(NSTextStorage *)textStorage
 didProcessEditing:(NSTextStorageEditActions)editedMask
             range:(NSRange)editedRange
    changeInLength:(NSInteger)delta
{
    
    NSString * content = [ts string];
    
    NSRange range =NSMakeRange(0, [ts length]);
    [ts removeAttribute:NSForegroundColorAttributeName range:range];
    [ts addAttribute:NSForegroundColorAttributeName value:[NSColor redColor] range:range];
    [ts addAttribute:NSFontAttributeName value:[NSFont fontWithName:@"Consolas" size:15.0] range:range];
    
    NSScanner * scanner = [NSScanner scannerWithString:content];
    
    
}

-(void)textDidChange:(NSNotification *)notification
{
   
    NSThread * thread  = [[NSThread alloc]initWithTarget:self selector:@selector(findString:) object:@"###"];
    [thread start];
//    [thread cancel];
}

-(void)findString:(NSString *)target
{
    
    
}


@end
