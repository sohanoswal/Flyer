//
//  SOMyScene.m
//  Flyer
//
//  Created by Sohan Oswal on 05/05/14.
//  Copyright (c) 2014 Sohan Oswal. All rights reserved.
//

#import "SOMyScene.h"

@interface SOMyScene(){}

@property SKSpriteNode *rectangle;

@end


@implementation SOMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
       self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:CGRectMake(0,192 , self.size.width, self.size.height)];
        
        
        //self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:CGRectMake(self.size.height,self.size.width)];
        
    }
    return self;
}

- (void) viewDidLoad {
    
    NSLog(@"%@", self.view);
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        //get the location of the touch
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *rectangle = [SKSpriteNode spriteNodeWithColor:[UIColor redColor] size:CGSizeMake(50, 50)];
        //set the newly created node position to the position of the touch
        rectangle.position = location;
        //initialize the physicsBody with the size of the rectangle
        rectangle.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:rectangle.size];
        //gravity is going to be simulated on this node
        rectangle.physicsBody.affectedByGravity = YES;
        //adding the node to the scene
        [self addChild:rectangle];
        
    }
}



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
