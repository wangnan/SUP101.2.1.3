/*
 Generated by Sybase Unwired Platform 
 Compiler version - 2.1.3.231
*/ 

#import "SUP101PersonalizationParameters.h"
#import "SUP101PersonalizationParametersMetaData.h"
#import "SUPJsonObject.h"
#import "SUP101SUP101DB.h"
#import "SUPClassDelegate.h"
#import "SUPJsonReader.h"
#import "SUPEntityMetaDataRBS.h"

@interface SUP101PersonalizationParameters(hidden)
-(void)submitPending;
@end
@implementation SUP101PersonalizationParameters

@synthesize username = _username;
@synthesize usernameUserDefined = _usernameUserDefined;
@synthesize password = _password;
@synthesize passwordUserDefined = _passwordUserDefined;

- (void)setUsername:(NSString*)newUsername
{
    if (newUsername != self->_username)
    {
		[self->_username release];
        self->_username = [newUsername retain];
		_usernameUserDefined = YES;
    }
}
- (void)setUsernameUserDefined:(BOOL)newUsernameUserDefined
{
    if (newUsernameUserDefined != self->_usernameUserDefined)
    {
        self->_usernameUserDefined = newUsernameUserDefined;
    }
}
- (void)setPassword:(NSString*)newPassword
{
    if (newPassword != self->_password)
    {
		[self->_password release];
        self->_password = [newPassword retain];
		_passwordUserDefined = YES;
    }
}
- (void)setPasswordUserDefined:(BOOL)newPasswordUserDefined
{
    if (newPasswordUserDefined != self->_passwordUserDefined)
    {
        self->_passwordUserDefined = newPasswordUserDefined;
    }
}

static SUPClassDelegate *g_SUP101PersonalizationParameters_delegate = nil;

+ (SUPClassDelegate *) delegate
{
	@synchronized(self) {
		if (g_SUP101PersonalizationParameters_delegate == nil) {
			g_SUP101PersonalizationParameters_delegate = [[SUPClassDelegate alloc] initWithName:@"SUP101PersonalizationParameters" clazz:[self class]
				metaData:[self metaData] dbDelegate:[SUP101SUP101DB delegate] database:[SUP101SUP101DB instance]];
		}
	}
	
	return [[g_SUP101PersonalizationParameters_delegate retain] autorelease];
}

- (SUPJsonObject*)getAttributeJson:(int)id_
{
    switch(id_)
    {
        default:
        return [super getAttributeJson:id_];
    }

}
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value
{
    switch(id_)
    { 
        default:
            [super setAttributeJson:id_:value];
            break;
    }

}
static SUPClassMetaDataRBS* SUP101PersonalizationParameters_META_DATA;

+ (SUPClassMetaDataRBS*)metaData
{
    if (SUP101PersonalizationParameters_META_DATA == nil) {
 	   	SUP101PersonalizationParameters_META_DATA = [[SUP101PersonalizationParametersMetaData alloc] init];
	}
	
	return SUP101PersonalizationParameters_META_DATA;
}

- (SUPClassMetaDataRBS*)getClassMetaData
{
    return [[self class] metaData];
}
- (id) init
{
    if ((self = [super init]))
    {
        self.classMetaData = (SUPEntityMetaDataRBS *)[SUP101PersonalizationParameters metaData];
        [self setClassDelegate:[[self class] delegate]];
        _usernameUserDefined = NO;
        _passwordUserDefined = NO;   
        clientPersonalizationTableName = @"co_sup101_1_0_clientpersonalization";
        [self load];
        
    }
    return self;    
}

-(SUPString) getAttributeString:(int)id_
{
    switch(id_)
    {
    case 91:
        return self.username;
    case 93:
        return self.password;
    default:
        return [super getAttributeString:id_];
    }
}

-(void) setAttributeString:(int)id_:(SUPString)v
{
    switch(id_)
    {
    case 91:
        self.username = v;
        break;;
    case 93:
        self.password = v;
        break;;
    default:
        [super setAttributeString:id_:v];
        break;;
    }
}
-(SUPBoolean) getAttributeBoolean:(int)id_
{
    switch(id_)
    {
    case 92:
        return self.usernameUserDefined;
    case 94:
        return self.passwordUserDefined;
    default:
        return [super getAttributeBoolean:id_];
    }
}

-(void) setAttributeBoolean:(int)id_:(SUPBoolean)v
{
    switch(id_)
    {
    case 92:
        self.usernameUserDefined = v;
        break;;
    case 94:
        self.passwordUserDefined = v;
        break;;
    default:
        [super setAttributeBoolean:id_:v];
        break;;
    }
}
+ (SUP101PersonalizationParameters*)getInstance
{
    SUP101PersonalizationParameters* me = [[SUP101PersonalizationParameters alloc] init];
    [me autorelease];
    return me;
}
- (void)dealloc
{
    if(_username)
    {
        [_username release];
        _username = nil;
    }
    if(_password)
    {
        [_password release];
        _password = nil;
    }
	[super dealloc];
}

@end