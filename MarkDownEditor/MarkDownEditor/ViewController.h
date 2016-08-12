//
//  ViewController.h
//  MarkDownEditor
//
//  Created by allen on 8/12/16.
//  Copyright © 2016 allen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTextViewDelegate, NSTextStorageDelegate>
{
    NSTextStorage * ts;
    
}

@property (unsafe_unretained) IBOutlet NSTextView *tv_EditorView;
@property (weak) IBOutlet NSButton *btn_save;


@end

