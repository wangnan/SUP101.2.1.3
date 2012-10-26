/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "SUP101KeyGenerator.h"
#import "SUP101KeyGeneratorMetaData.h"
#import "SUPEntityDelegate.h"
#import "SUP101SUP101DB.h"
#import "SUPKeyGenerator.h"

@implementation SUP101KeyGenerator

static SUPEntityDelegate *g_SUP101KeyGenerator_delegate = nil;

+ (SUPEntityDelegate *) delegate
{
	@synchronized(self) {
		if (g_SUP101KeyGenerator_delegate == nil) {
			g_SUP101KeyGenerator_delegate = [[SUPEntityDelegate alloc] initWithName:@"SUP101KeyGenerator" clazz:[self class]
				metaData:[self metaData] dbDelegate:[SUP101SUP101DB delegate] database:[SUP101SUP101DB instance]];
		}
	}
	
	return [[g_SUP101KeyGenerator_delegate retain] autorelease];
}

static SUPEntityMetaDataRBS* SUP101KeyGenerator_META_DATA;

+ (SUPEntityMetaDataRBS*)metaData
{
    if (SUP101KeyGenerator_META_DATA == nil) {
 	   	SUP101KeyGenerator_META_DATA = [[SUP101KeyGeneratorMetaData alloc] init];
	}
	
	return SUP101KeyGenerator_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}

- (id)init
{
    self = [super initWithParameters:[SUP101SUP101DB delegate]:@"sup101_1_0_keygenerator":100000];
    if (self) {
        // Initialization code here.
        [SUPKeyGenerator setObjectInstance:@"SUP101":self];
    }
    
    return self;
}

+ (SUP101KeyGenerator*)getInstance
{
    SUP101KeyGenerator* me = [[SUP101KeyGenerator alloc] init];
    [me autorelease];
    return me;
}

+ (int64_t)generateId
{
    return [[SUP101SUP101DB delegate] generateId];
}

@end