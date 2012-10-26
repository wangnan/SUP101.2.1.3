#import "sybase_sup.h"

#import "SUPAbstractDBRBS.h"
#import "SUPSyncStatusListener.h"
#import "SUPDatabaseDelegate.h"
#import "SUP101SUP101DBMetaData.h"

// Entity metadata definitions (for internal use)
#ifndef _ENTITY_NUMBERS_FOR_SUP101SUP101DB_
#define _ENTITY_NUMBERS_FOR_SUP101SUP101DB_
#define _ENTITY_NUMBER_FOR_SUP101Customer_ 1
#define _ENTITY_NUMBER_FOR_SUP101Sales_order_ 2
#define _ENTITY_NUMBER_FOR_SUP101LogRecordImpl_ 3
#define _ENTITY_NUMBER_FOR_SUP101OperationReplay_ 4
#define _ENTITY_NUMBER_FOR_SUP101SISSubscription_ 5
#define _ENTITY_NUMBER_FOR_SUP101PackageProperties_ 6
#define _ENTITY_NUMBER_FOR_SUP101ChangeLogImpl_ 7
#define _ENTITY_NUMBER_FOR_SUP101OfflineAuthentication_ 8
#define _ENTITY_NUMBER_FOR_SUP101KeyGenerator_ 9
#define _ENTITY_NUMBER_FOR_SUP101LocalKeyGenerator_ 10
#endif //_ENTITY_NUMBERS_FOR_SUP101SUP101DB_
// End entity metadata definitions
// Entity type definitions (for change log query)
#ifndef _ENTITY_TYPES_FOR_SUP101SUP101DB_
#define _ENTITY_TYPES_FOR_SUP101SUP101DB_
#define SUP101_ENTITY_TYPE_Customer 1;
#define SUP101_ENTITY_TYPE_Sales_order 2;
#endif
// End of entity type definitions
@class SUP101PersonalizationParameters;
@class SUPApplication;
@protocol SUPSynchronizationGroup;


@class SUPClassDelegate;
@class SUPClassMetaDataRBS;

// public interface declaration, can be used by application. 
/*!
 @class SUP101SUP101DB
 @abstract This class is part of package "SUP101:1.0"
 @discussion Generated by Sybase Unwired Platform, compiler version 2.1.3.231
*/

@interface SUP101SUP101DB : SUPAbstractDBRBS
{
@private
    
}
/*!
  @method 
  @abstract Returns the personalization parameters for this package
  @discussion
  @throws SUPPersistenceException
 */
+ (SUP101PersonalizationParameters*)getPersonalizationParameters;

/*!
  @method 
  @abstract Returns the database metadata
  @discussion
 */
+ (SUPDatabaseMetaDataRBS*)metaData;

/*!
  @method 
  @abstract Returns the database delegate
  @discussion
 */
+ (SUPDatabaseDelegate*)delegate;

/*!
  @method 
  @abstract Returns the callback handler for the database class.
  @discussion
 */
+ (NSObject<SUPCallbackHandler>*)callbackHandler;
/*!
  @method 
  @abstract Returns the connection profile.
  @discussion
 */
+ (SUPConnectionProfile*)connectionProfile;
/*!
  @method 
  @abstract Returns the connection profile.
  @discussion
 */
+ (SUPConnectionProfile*)getConnectionProfile;
/*!
  @method 
  @abstract Returns the synchronization profile.
  @discussion
 */
+ (SUPConnectionProfile*)getSynchronizationProfile;
/*!
  @method 
  @abstract Creates the database and initializes the tables for all MBOs in this package.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)createDatabase;
/*!
  @method 
  @abstract Drop all data from all tables: if keepClientOnly = YES, do not drop data from client-only tables.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)cleanAllData:(BOOL) keepClientOnly;
/*!
  @method 
  @abstract Drop all data from all tables, except client-only tables.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)cleanAllData;
/*!
  @method 
  @abstract Deletes the database for this package.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)deleteDatabase;
/*!
  @method 
  @abstract Return true if database exists, false otherwise.
  @discussion
 */
+ (BOOL)databaseExists;
/*!
  @method 
  @abstract Return the database connection for this package.
  @discussion
 */
+ (id<SUPConnectionWrapper>)getConnectionWrapper;
/*!
  @method 
  @abstract Opens database connection.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)openConnection;
/*!
  @method 
  @abstract Closes database connection.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)closeConnection;
/*!
  @method 
  @abstract Return the username used in communcations with server.
  @discussion
 */
+ (NSString*)getSyncUsername;
/*!
  @method 
  @abstract Return the package name.
  @discussion
 */
+ (NSString*)getPackageName;
/*!
  @method 
  @abstract Return the current server domain name.
  @discussion
 */
+ (NSString*)getDomainName;
/*!
  @method 
  @abstract Return the database schema version of this package.
  @discussion
 */
+ (int32_t)getSchemaVersion;
/*!
  @method 
  @abstract Return the protocol version of this package.
  @discussion
 */
+ (int32_t)getProtocolVersion;
/*!
  @method 
  @abstract Return the logger for this package.
  @discussion
 */
+ (id<SUPLogger>)getLogger;
/*!
  @method 
  @abstract Return the SynchronizationGroup instance corresponding to the given group name.
  @discussion
 */
+ (id<SUPSynchronizationGroup>) getSynchronizationGroup:(NSString*)syncGroup;
/*!
  @method 
  @abstract Execute the passed in query and return a result set.
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPQueryResultSet*)executeQuery:(SUPQuery*)query;
/*!
  @method 
  @abstract Set the callback handler for the database class.
  @discussion
 */
+ (void)registerCallbackHandler:(NSObject<SUPCallbackHandler>*)handler;
/*!
  @method 
  @abstract Set Application instance.
  @discussion
 */
+ (void)setApplication:(SUPApplication*)application;
/*!
  @method 
  @abstract Begin server communications.
  @discussion
 */
+ (void)startBackgroundSynchronization;
/*!
  @method 
  @abstract End server communications.
  @discussion
 */
+ (void)stopBackgroundSynchronization;
/*!
  @method 
  @abstract Resume the subscription to the server after a call to suspendSubscription.
  @discussion
 */
+ (void)resumeSubscription;
/*!
  @method 
  @abstract Subscribe to the server.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)subscribe;
/*!
  @method 
  @abstract (Deprecated) Send a message to the server to synchronize this client with the specified synchronization groups.
  @discussion
 */
+ (void)beginSynchronize:(SUPObjectList*)synchronizationGroups withContext:(NSString*)context withUploadOnly:(BOOL) uploadOnly;
/*!
  @method 
  @abstract Send a message to the server to synchronize this client with the specified synchronization groups.
  @discussion
 */
+ (void)beginSynchronize:(SUPObjectList*)synchronizationGroups withContext:(NSString*)context;
/*!
  @method 
  @abstract Submit all the pending operations (ready for sending to server) 
  @discussion
  @throws SUPPersistenceException
 */
+ (void)submitPendingOperations;
/*!
  @method 
  @abstract Submit all the pending operations for the given synchronization group (ready for sending to server).
  @discussion
  @throws SUPPersistenceException
 */
+ (void)submitPendingOperations:(NSString*)synchronizationGroup;
/*!
  @method 
  @abstract Search through all entities in this package and cancel any pending changes.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)cancelPendingOperations;
/*!
  @method 
  @abstract Search through all entities in this package for the given synchronization group and cancel any pending changes.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)cancelPendingOperations:(NSString*)synchronizationGroup;
/*!
  @method 
  @abstract return TRUE if there are replay pending requests, false otherwise.
  @discussion
 */
+ (BOOL)hasPendingOperations;
/*!
  @method 
  @abstract Suspend the current server subscription.
  @discussion
 */
+ (void)suspendSubscription;
/*!
  @method 
  @abstract Send the recover message to the server to have it send all the current data for this client.
  @discussion
 */
+ (void)recover;
/*!
  @method 
  @abstract End the current subscription to the server.
  @discussion
 */
+ (void)unsubscribe;
/*!
  @method 
  @abstract Generate a new encryption key.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)generateEncryptionKey;
/*!
  @method 
  @abstract Change the encryption key used for database encryption.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)changeEncryptionKey:(NSString *)newKey;
/*!
  @method 
  @abstract Return log records matching the passed in query.
  @discussion
  @throws SUPPersistenceException
 */
+ (SUPObjectList*)getLogRecords:(SUPQuery*)query;
/*!
  @method 
  @abstract Submit any pending client-created log records to the server.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)submitLogRecords;
/*!
  @method 
  @abstract synchronize the synchronizationGroup with server.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)synchronize:(NSString*)synchronizationGroup;
/*!
  @method 
  @abstract synchronize all the synchronizationGroups with server.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)synchronize;
/*!
  @method 
  @abstract synchronize the synchronizationGroups with server, using custom syncStatusListener.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)synchronizeWithListener:(id<SUPSyncStatusListener>) listener;
/*!
  @method 
  @abstract synchronize the synchronizationGroup with server, using custom syncStatusListener.
  @discussion
  @throws SUPPersistenceException
 */
+ (void)synchronize:(NSString *)synchronizationGroup withListener:(id<SUPSyncStatusListener>)listener;
/*!
  @method 
  @abstract return YES if there is no replay pending request, NO otherwise
  @discussion
 */
+ (BOOL) isReplayQueueEmpty;
/*!
  @method 
  @abstract Retrieve currently queued background synchronization requests.
  @discussion
 */
+ (SUPObjectList*) getBackgroundSyncRequests;
/*!
  @method 
  @abstract enable Change Log.
  @discussion
 */
+ (void) enableChangeLog;
/*!
  @method 
  @abstract disable Change Log.
  @discussion
 */
+ (void) disableChangeLog;
/*!
  @method 
  @abstract Get the log record based on the query filtering 
  @discussion
 */
+ (SUPObjectList*) getChangeLogs:(SUPQuery*)query;
/*!
  @method 
  @abstract Delete all the change logs in the client.
  @discussion
 */
+ (void) deleteChangeLogs;
/*!
  @method 
  @abstract Authenticate against the server.
  @discussion
  @throws SUPPersistenceException
 */
+ (void) onlineLogin;
/*!
  @method 
  @abstract Begin a local transaction.
  @discussion
 */
+ (SUPLocalTransaction*)beginTransaction;


@end


// internal methods declaration, only used by generated code.
@interface SUP101SUP101DB(internal)
+ (id<SUPReadWriteLockManager>)dblock;
+ (SUP101SUP101DB*)instance;
+ (void)replay:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content;
+ (void)search:(NSString *)mbo withId:(int64_t)counter withContent:(SUPJsonArray*)content;
+ (void)onMessage:(SUPJsonMessage*)message;
+ (id<SUPQueueConnection>)queueConnection;
+ (void)checkIfSubscribed;
+ (BOOL)packageHasSubscription;
+ (void)clearConnection;
+ (void)setNeedSync;
+ (void)synchronizeIfNeeded;
@end