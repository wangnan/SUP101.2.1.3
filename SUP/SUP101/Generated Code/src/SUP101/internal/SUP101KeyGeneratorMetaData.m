#import "SUP101KeyGeneratorMetaData.h"

#import "SUPRelationshipMetaData.h"
#import "SUPParameterMetaData.h"
#import "SUPIndexMetaData.h"
#import "SUPAttributeMap.h"
#import "SUPObjectList.h"
#import "SUPClassMap.h"
#import "SUPEntityMap.h"
#import "SUP101KeyGenerator.h"
#import "SUPOperationMap.h"
#import "SUP101SUP101DB.h"
#import "SUPDataType.h"

@implementation SUP101KeyGeneratorMetaData

+ (SUP101KeyGeneratorMetaData*)getInstance
{
    return [[[SUP101KeyGeneratorMetaData alloc] init] autorelease];
}

- (id)init
{
    if (self = [super init]) {
		self.id = _ENTITY_NUMBER_FOR_SUP101KeyGenerator_;
		self.name = @"KeyGenerator";
		self.klass = [SUP101KeyGenerator class];
 		self.allowPending = NO;;

		self.isClientOnly = YES;

		SUPObjectList *attributes = [SUPObjectList getInstance];
		SUPAttributeMetaDataRBS* a_firstId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			120:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"firstId":@"":@"first_id":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_firstId setColumn:@"first_id"];
		SUPAttributeMetaDataRBS* a_lastId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			121:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"lastId":@"":@"last_id":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_lastId setColumn:@"last_id"];
		SUPAttributeMetaDataRBS* a_nextId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			122:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"nextId":@"":@"next_id":
			@"":-1:0:0:
			@"null":NO:@"":
			NO:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_nextId setColumn:@"next_id"];
		SUPAttributeMetaDataRBS* a_remoteId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			118:
			[SUPDataType forName:@"string"]:@"varchar(300)":@"remoteId":@"":@"remote_id":
			@"":300:0:0:
			@"null":NO:@"":
			YES:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_remoteId setColumn:@"remote_id"];
		SUPAttributeMetaDataRBS* a_batchId = [SUPAttributeMetaDataRBS attributeMetaDataWith:
			119:
			[SUPDataType forName:@"long"]:@"decimal(20,0)":@"batchId":@"":@"batch_id":
			@"":-1:0:0:
			@"null":NO:@"":
			YES:NO:NO:NO:NO:NO:
			GeneratedScheme_NONE:
			NO:SUPPersonalizationType_None:NO];
		[a_batchId setColumn:@"batch_id"];
 		
		[attributes addThis:a_firstId];
		[attributes addThis:a_lastId];
		[attributes addThis:a_nextId];
		[attributes addThis:a_remoteId];
		[attributes addThis:a_batchId];
		self.attributes = attributes;
		
		SUPAttributeMap * attributeMap = [SUPAttributeMap getInstance];
   		[attributeMap setAttributes:attributes];
	   	self.attributeMap = attributeMap;

 		SUPOperationMetaData* o_refresh_0 = [SUPOperationMetaData createOperationMetaData:1:(SUPString)@"refresh":[SUPDataType forName:@"void"]:true];
		[o_refresh_0 setIsStatic:NO];
		[o_refresh_0 setIsCreate:NO];
		[o_refresh_0 setIsUpdate:NO];
		[o_refresh_0 setIsDelete:NO]; 		
 		SUPOperationMetaData* o_save_0 = [SUPOperationMetaData createOperationMetaData:2:(SUPString)@"save":[SUPDataType forName:@"void"]:true];
		[o_save_0 setIsStatic:NO];
		[o_save_0 setIsCreate:NO];
		[o_save_0 setIsUpdate:NO];
		[o_save_0 setIsDelete:NO]; 		
 
  		SUPObjectList *operations = [SUPObjectList listWithCapacity:2];
 		[operations addThis:o_refresh_0];
 		[operations addThis:o_save_0];
	 	self.operations = operations;
 	
		SUPOperationMap *operationMap = [SUPOperationMap getInstance];
		[operationMap setOperations:operations];
		self.operationMap = operationMap;		
		self.table = @"sup101_1_0_keygenerator";
		self.synchronizationGroup = @"system";

			
		[self.keyList add:a_remoteId];
		[self.keyList add:a_batchId];


        self.keyClass = @"KeyGeneratorPK";
    }
    return self;
}
@end