//
//  TWVideoModule.h
//  stranger
//
//  Created by Gaston Morixe on 11/4/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@import TwilioVideo;

#import "RCTBridgeModule.h"
#import "RCTConvert.h"

#import "RCTEventDispatcher.h"
#import "RCTEventEmitter.h"

@interface TWVideoModule : RCTEventEmitter <RCTBridgeModule>

@property (strong, nonatomic) UIView *previewView;
@property (strong, nonatomic) UIView *remoteMediaView;


//@property (nonatomic, copy) RCTBubblingEventBlock onConnect;

/* The CameraCapturer is a default video capturer provided by Twilio which can
 capture video from the front or rear-facing device camera  */
@property (nonatomic, strong) TVICameraCapturer *camera;

// Video Tracks (local or remote) can be attached to any UIView

/* LocalMedia represents our local camera and microphone (media) configuration
 that can be sent to other Participants in Rooms, or previewed locally */
@property (nonatomic, strong) TVILocalMedia *localMedia;


@property (strong, nonatomic) TVILocalVideoTrack* localVideoTrack;
@property (strong, nonatomic) TVILocalAudioTrack* localAudioTrack;

@property (strong, nonatomic) TVIParticipant* participant;

@property (strong, nonatomic) TVIVideoClient *videoClient;

@property (strong, nonatomic) TVIRoom *room;


@end
