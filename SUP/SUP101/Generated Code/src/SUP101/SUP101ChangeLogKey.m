/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "SUP101ChangeLogKey.h"
#import "SUP101ChangeLogKeyMetaData.h"
#import "SUPJsonObject.h"
#import "SUP101SUP101DB.h"
#import "SUPClassDelegate.h"
#import "SUPEntityMetaDataRBS.h"

@implementation SUP101ChangeLogKey

@synthesize entityType = _entityType;
@synthesize surrogateKey = _surrogateKey;

static SUPClassDelegate *g_SUP101ChangeLogKey_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_SUP101ChangeLogKey_delegate == nil) {
			g_SUP101ChangeLogKey_delegate = [[SUPClassDelegate alloc] initWithName:@"SUP101ChangeLogKey" clazz:[self class]
				metaData:[self metaData] dbDelegate:[SUP101SUP101DB delegate] database:[SUP101SUP101DB instance]];
		}
	}
	
	return [[g_SUP101ChangeLogKey_delegate retain] autorelease];
}

static SUPClassMetaDataRBS* SUP101ChangeLogKey_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (SUP101ChangeLogKey_META_DATA == nil) {
 	   	SUP101ChangeLogKey_META_DATA = [[SUP101ChangeLogKeyMetaData alloc] init];
	}
	
	return SUP101ChangeLogKey_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[SUP101ChangeLogKey metaData];
        [self setClassDelegate:[[self class] delegate]];
        
    }
    return self;    
}

-(SUPLong) getAttributeLong:(int)id_
{
    switch(id_)
    {
    case 70:
        return self.surrogateKey;
    default:
        return [super getAttributeLong:id_];
    }
}

-(void) setAttributeLong:(int)id_:(SUPLong)v
{
    switch(id_)
    {
    case 70:
        self.surrogateKey = v;
        break;;
    default:
        [super setAttributeLong:id_:v];
        break;;
    }
}
-(SUPInt) getAttributeInt:(int)id_
{
    switch(id_)
    {
    case 69:
        return self.entityType;
    default:
        return [super getAttributeInt:id_];
    }
}

-(void) setAttributeInt:(int)id_:(SUPInt)v
{
    switch(id_)
    {
    case 69:
        self.entityType = v;
        break;;
    default:
        [super setAttributeInt:id_:v];
        break;;
    }
}
+ (SUP101ChangeLogKey*)getInstance
{
    SUP101ChangeLogKey* me = [[SUP101ChangeLogKey alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
	[super dealloc];
}

@end