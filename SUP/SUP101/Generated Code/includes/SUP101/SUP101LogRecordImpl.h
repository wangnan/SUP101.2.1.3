#import "sybase_sup.h"

#import "SUPClassWithMetaData.h"
#import "SUPAbstractEntityRBS.h"
#import "SUPMobileBusinessObject.h"
#import "SUPEntityDelegate.h"
#import "SUPLogRecord.h"


@class SUPEntityMetaDataRBS;
@class SUPEntityDelegate;
@class SUPClassMetaDataRBS;
@class SUPQuery;

// public interface declaration, can be used by application. 
/*!
 @class SUP101LogRecordImpl
 @abstract This class is part of package "SUP101:1.0"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.231
*/

@interface SUP101LogRecordImpl : SUPAbstractEntityRBS<SUPMobileBusinessObject, SUPClassWithMetaData,SUPLogRecord>
{
@private
    int32_t _level;
    int32_t _code;
    NSString* _eisCode;
    NSString* _message;
    NSString* _component;
    NSString* _entityKey;
    NSString* _operation;
    NSString* _requestId;
    NSDate* _timestamp;
    int64_t _messageId;
}

@property(assign,nonatomic) int32_t level;
@property(assign,nonatomic) int32_t code;
@property(retain,nonatomic) NSString* eisCode;
@property(retain,nonatomic) NSString* message;
@property(retain,nonatomic) NSString* component;
@property(retain,nonatomic) NSString* entityKey;
@property(retain,nonatomic) NSString* operation;
@property(retain,nonatomic) NSString* requestId;
@property(retain,nonatomic) NSDate* timestamp;
@property(assign,nonatomic) int64_t messageId;

+ (SUPEntityMetaDataRBS*)metaData;
+ (SUPEntityDelegate *)delegate;
+ (void) registerCallbackHandler:(NSObject<SUPCallbackHandler>*)handler;
+ (NSObject<SUPCallbackHandler>*)callbackHandler;
- (SUPClassMetaDataRBS*)getClassMetaData;
/*!
  @method 
  @abstract Sets relationship attributes to null to save memory (they will be retrieved from the DB on the next getter call or property reference)
  @discussion
  @throws SUPPersistenceException
 */
- (void)clearRelationshipObjects;
- (id) init;
- (void)dealloc;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in, or null if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (SUP101LogRecordImpl*)find:(int64_t)id_;
/*!
  @method 
  @abstract Returns an SUPObjectList of entity rows satisfying this query
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)findWithQuery:(SUPQuery*)query;
/*!
  @method 
  @abstract Returns the primary key for this entity.
  @discussion
 */
- (int64_t)_pk;
/*!
  @method 
  @abstract Returns the entity for the primary key value passed in; throws an exception if the entity is not found.
  @discussion
  @throws SUPPersistenceException
 */
+ (SUP101LogRecordImpl*)load:(int64_t)id;
/*!
  @method 
  @abstract Returns an SUPObjectList of log records for this entity.
  @discussion
  @throws SUPPersistenceException
 */
- (SUPObjectList*)getLogRecords;
/*!
  @method 
  @abstract Creates a new autoreleased instance of this class
  @discussion
 */
+ (SUP101LogRecordImpl*)getInstance;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)toString;
/*!
  @method 
  @abstract Return a string description of this entity.
  @discussion
 */
- (NSString*)description;
+ (void) submitPendingOperations;
+ (void) cancelPendingOperations;
- (SUPString)getLastOperation;
+ (SUPObjectList *)findByEntity:(NSString*)entityName:(NSString*)keyValue;
+ (SUPObjectList*)getPendingObjects;
+ (SUPObjectList*)getPendingObjects:(int32_t)skip take:(int32_t)take;
/*!
  @method
  @abstract Generated class method 
  @param query
  @throws SUPPersistenceException
 */
+ (int32_t)getSize:(SUPQuery*)query;


@end
typedef SUPObjectList SUP101LogRecordImplList;

// internal methods declaration, only used by generated code.
@interface SUP101LogRecordImpl(internal)


- (SUPJsonObject*)getAttributeJson:(int)id_;
- (void)setAttributeJson:(int)id_:(SUPJsonObject*)value;

-(SUPLong) getAttributeLong:(int)id_;
-(void) setAttributeLong:(int)id_:(SUPLong)v;
-(SUPString) getAttributeNullableString:(int)id_;
-(void) setAttributeNullableString:(int)id_:(SUPString)v;
-(SUPNullableDateTime) getAttributeNullableDateTime:(int)id_;
-(void) setAttributeNullableDateTime:(int)id_:(SUPNullableDateTime)v;
-(SUPInt) getAttributeInt:(int)id_;
-(void) setAttributeInt:(int)id_:(SUPInt)v;
@end