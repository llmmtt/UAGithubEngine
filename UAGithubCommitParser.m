//
//  UAGithubCommitParser.m
//  UAGithubEngine
//
//  Created by Owain Hunt on 24/04/2010.
//  Copyright 2010 Owain R Hunt. All rights reserved.
//

#import "UAGithubCommitParser.h"


@implementation UAGithubCommitParser

- (id)initWithXML:(NSData *)theXML delegate:(id)theDelegate requestType:(UAGithubRequestType)reqType {
	
	if (self = [super initWithXML:theXML delegate:theDelegate requestType:reqType])
	{
		numberElements = [NSArray arrayWithObjects:@"number", @"votes", @"comments", nil];
		dateElements = [NSArray arrayWithObjects:@"created-at", @"updated-at", nil];
		baseElement = @"issue";
	}
	
	[parser parse];
	
	return self;
}


@end
