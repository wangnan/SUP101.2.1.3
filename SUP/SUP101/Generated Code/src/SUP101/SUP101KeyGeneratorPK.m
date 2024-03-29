/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "SUP101KeyGeneratorPK.h"
#import "SUP101KeyGeneratorPKMetaData.h"
#import "SUPJsonObject.h"
#import "SUP101SUP101DB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"

@implementation SUP101KeyGeneratorPK

@synthesize remoteId = _remoteId;
@synthesize batchId = _batchId;

static SUPClassDelegate *g_SUP101KeyGeneratorPK_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_SUP101KeyGeneratorPK_delegate == nil) {
			g_SUP101KeyGeneratorPK_delegate = [[SUPClassDelegate alloc] initWithName:@"SUP101KeyGeneratorPK" clazz:[self class]
				metaData:[self metaData] dbDelegate:[SUP101SUP101DB delegate] database:[SUP101SUP101DB instance]];
		}
	}
	
	return [[g_SUP101KeyGeneratorPK_delegate retain] autorelease];
}

static SUPClassMetaDataRBS* SUP101KeyGeneratorPK_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (SUP101KeyGeneratorPK_META_DATA == nil) {
 	   	SUP101KeyGeneratorPK_META_DATA = [[SUP101KeyGeneratorPKMetaData alloc] init];
	}
	
	return SUP101KeyGeneratorPK_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[SUP101KeyGeneratorPK metaData];
        [self setClassDelegate:[[self class] delegate]];
        
    }
    return self;    
}

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 115:
        return self.batchId;
    default:
        return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 115:
        self.batchId = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 114:
        return self.remoteId;
    default:
        return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 114:
        self.remoteId = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
+ (SUP101KeyGeneratorPK*)getInstance
{
    SUP101KeyGeneratorPK* me = [[SUP101KeyGeneratorPK alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
    if(_remoteId)
    {
        [_remoteId release];
        _remoteId = nil;
    }
	[super dealloc];
}

@end