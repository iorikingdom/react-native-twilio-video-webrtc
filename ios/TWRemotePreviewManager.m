//
//  TWVideoManager.m
//  stranger
//
//  Created by Gaston Morixe on 11/4/16.
//  Copyright © 2016 Facebook. All rights reserved.
//
#import "UIView+React.h"

@import TwilioVideo;
#import "TWRemotePreviewManager.h"
#import <PureLayout/PureLayout.h>
#import "TWVideoModule.h"



@interface TWRemotePreviewManager()

@end

@implementation TWRemotePreviewManager

RCT_EXPORT_MODULE()

//RCT_EXPORT_VIEW_PROPERTY(onConnect, RCTBubblingEventBlock)


-(void)dealloc{

}

-(instancetype)init{
  if(self = [super init]){

  }
  return self;
}

- (UIView *)view

{
  
  UIView* view = [[UIView alloc] init];
  
  TWVideoModule* videoModule = [self.bridge moduleForName:@"TWVideoModule"];
  
  if (videoModule) {
    [videoModule.remoteMediaView removeFromSuperview];
    [view addSubview:videoModule.remoteMediaView];
    [videoModule.remoteMediaView autoPinEdgesToSuperviewEdges];
      
  }
  
  return view;
  
}

@end


//RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)

//RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, RCTMap)
//{
//  [view setRegion:json ? [RCTConvert MKCoordinateRegion:json] : defaultView.region animated:YES];
//}
