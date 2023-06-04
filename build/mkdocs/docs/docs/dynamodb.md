<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon DynamoDB

### Description

Amazon DynamoDB is a fully managed NoSQL database service that provides
fast and predictable performance with seamless scalability. DynamoDB
lets you offload the administrative burdens of operating and scaling a
distributed database, so that you don't have to worry about hardware
provisioning, setup and configuration, replication, software patching,
or cluster scaling.

With DynamoDB, you can create database tables that can store and
retrieve any amount of data, and serve any level of request traffic. You
can scale up or scale down your tables' throughput capacity without
downtime or performance degradation, and use the Amazon Web Services
Management Console to monitor resource utilization and performance
metrics.

DynamoDB automatically spreads the data and traffic for your tables over
a sufficient number of servers to handle your throughput and storage
requirements, while maintaining consistent and fast performance. All of
your data is stored on solid state disks (SSDs) and automatically
replicated across multiple Availability Zones in an Amazon Web Services
Region, providing built-in high availability and data durability.

### Usage

    dynamodb(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- dynamodb(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_batch_execute_statement/"> batch_execute_statement </a></td>
<td style="text-align: left;">This operation allows you to perform batch
reads or writes on data stored in DynamoDB, using PartiQL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_batch_get_item/"> batch_get_item </a></td>
<td style="text-align: left;">The BatchGetItem operation returns the
attributes of one or more items from one or more tables</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_batch_write_item/"> batch_write_item </a></td>
<td style="text-align: left;">The BatchWriteItem operation puts or
deletes multiple items in one or more tables</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_create_backup/"> create_backup </a></td>
<td style="text-align: left;">Creates a backup for an existing
table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_create_global_table/"> create_global_table </a></td>
<td style="text-align: left;">Creates a global table from an existing
table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_create_table/"> create_table </a></td>
<td style="text-align: left;">The CreateTable operation adds a new table
to your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_delete_backup/"> delete_backup </a></td>
<td style="text-align: left;">Deletes an existing backup of a table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_delete_item/"> delete_item </a></td>
<td style="text-align: left;">Deletes a single item in a table by
primary key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_delete_table/"> delete_table </a></td>
<td style="text-align: left;">The DeleteTable operation deletes a table
and all of its items</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_backup/"> describe_backup </a></td>
<td style="text-align: left;">Describes an existing backup of a
table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_continuous_backups/"> describe_continuous_backups </a></td>
<td style="text-align: left;">Checks the status of continuous backups
and point in time recovery on the specified table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_contributor_insights/"> describe_contributor_insights </a></td>
<td style="text-align: left;">Returns information about contributor
insights for a given table or global secondary index</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_endpoints/"> describe_endpoints </a></td>
<td style="text-align: left;">Returns the regional endpoint
information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_export/"> describe_export </a></td>
<td style="text-align: left;">Describes an existing table export</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_global_table/"> describe_global_table </a></td>
<td style="text-align: left;">Returns information about the specified
global table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_global_table_settings/"> describe_global_table_settings </a></td>
<td style="text-align: left;">Describes Region-specific settings for a
global table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_import/"> describe_import </a></td>
<td style="text-align: left;">Represents the properties of the
import</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../dynamodb_describe_kinesis_streaming_destination/"> describe_kinesis_streaming_destination </a></td>
<td style="text-align: left;">Returns information about the status of
Kinesis streaming</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_limits/"> describe_limits </a></td>
<td style="text-align: left;">Returns the current provisioned-capacity
quotas for your Amazon Web Services account in a Region, both for the
Region as a whole and for any one DynamoDB table that you create
there</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_table/"> describe_table </a></td>
<td style="text-align: left;">Returns information about the table,
including the current status of the table, when it was created, the
primary key schema, and any indexes on the table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_describe_table_replica_auto_scaling/"> describe_table_replica_auto_scaling </a></td>
<td style="text-align: left;">Describes auto scaling settings across
replicas of the global table at once</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_describe_time_to_live/"> describe_time_to_live </a></td>
<td style="text-align: left;">Gives a description of the Time to Live
(TTL) status on the specified table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_disable_kinesis_streaming_destination/"> disable_kinesis_streaming_destination </a></td>
<td style="text-align: left;">Stops replication from the DynamoDB table
to the Kinesis data stream</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_enable_kinesis_streaming_destination/"> enable_kinesis_streaming_destination </a></td>
<td style="text-align: left;">Starts table data replication to the
specified Kinesis data stream at a timestamp chosen during the enable
workflow</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_execute_statement/"> execute_statement </a></td>
<td style="text-align: left;">This operation allows you to perform reads
and singleton writes on data stored in DynamoDB, using PartiQL</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_execute_transaction/"> execute_transaction </a></td>
<td style="text-align: left;">This operation allows you to perform
transactional reads or writes on data stored in DynamoDB, using
PartiQL</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_export_table_to_point_in_time/"> export_table_to_point_in_time </a></td>
<td style="text-align: left;">Exports table data to an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_get_item/"> get_item </a></td>
<td style="text-align: left;">The GetItem operation returns a set of
attributes for the item with the given primary key</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_import_table/"> import_table </a></td>
<td style="text-align: left;">Imports table data from an S3 bucket</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_list_backups/"> list_backups </a></td>
<td style="text-align: left;">List backups associated with an Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_list_contributor_insights/"> list_contributor_insights </a></td>
<td style="text-align: left;">Returns a list of
ContributorInsightsSummary for a table and all its global secondary
indexes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_list_exports/"> list_exports </a></td>
<td style="text-align: left;">Lists completed exports within the past 90
days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_list_global_tables/"> list_global_tables </a></td>
<td style="text-align: left;">Lists all global tables that have a
replica in the specified Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_list_imports/"> list_imports </a></td>
<td style="text-align: left;">Lists completed imports within the past 90
days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_list_tables/"> list_tables </a></td>
<td style="text-align: left;">Returns an array of table names associated
with the current account and endpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_list_tags_of_resource/"> list_tags_of_resource </a></td>
<td style="text-align: left;">List all tags on an Amazon DynamoDB
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_put_item/"> put_item </a></td>
<td style="text-align: left;">Creates a new item, or replaces an old
item with a new item</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_query/"> query </a></td>
<td style="text-align: left;">You must provide the name of the partition
key attribute and a single value for that attribute</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_restore_table_from_backup/"> restore_table_from_backup </a></td>
<td style="text-align: left;">Creates a new table from an existing
backup</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_restore_table_to_point_in_time/"> restore_table_to_point_in_time </a></td>
<td style="text-align: left;">Restores the specified table to the
specified point in time within EarliestRestorableDateTime and
LatestRestorableDateTime</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_scan/"> scan </a></td>
<td style="text-align: left;">The Scan operation returns one or more
items and item attributes by accessing every item in a table or a
secondary index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Associate a set of tags with an Amazon
DynamoDB resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_transact_get_items/"> transact_get_items </a></td>
<td style="text-align: left;">TransactGetItems is a synchronous
operation that atomically retrieves multiple items from one or more
tables (but not from indexes) in a single account and Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_transact_write_items/"> transact_write_items </a></td>
<td style="text-align: left;">TransactWriteItems is a synchronous write
operation that groups up to 100 action requests</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of tags from an
Amazon DynamoDB resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_update_continuous_backups/"> update_continuous_backups </a></td>
<td style="text-align: left;">UpdateContinuousBackups enables or
disables point in time recovery for the specified table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_update_contributor_insights/"> update_contributor_insights </a></td>
<td style="text-align: left;">Updates the status for contributor
insights for a specific table or index</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_update_global_table/"> update_global_table </a></td>
<td style="text-align: left;">Adds or removes replicas in the specified
global table</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_update_global_table_settings/"> update_global_table_settings </a></td>
<td style="text-align: left;">Updates settings for a global table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_update_item/"> update_item </a></td>
<td style="text-align: left;">Edits an existing item's attributes, or
adds a new item to the table if it does not already exist</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_update_table/"> update_table </a></td>
<td style="text-align: left;">Modifies the provisioned throughput
settings, global secondary indexes, or DynamoDB Streams settings for a
given table</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../dynamodb_update_table_replica_auto_scaling/"> update_table_replica_auto_scaling </a></td>
<td style="text-align: left;">Updates auto scaling settings on your
global tables at once</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../dynamodb_update_time_to_live/"> update_time_to_live </a></td>
<td style="text-align: left;">The UpdateTimeToLive method enables or
disables Time to Live (TTL) for the specified table</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- dynamodb()
    # This example reads multiple items from the Music table using a batch of
    # three GetItem requests.  Only the AlbumTitle attribute is returned.
    svc$batch_get_item(
      RequestItems = list(
        Music = list(
          Keys = list(
            list(
              Artist = list(
                S = "No One You Know"
              ),
              SongTitle = list(
                S = "Call Me Today"
              )
            ),
            list(
              Artist = list(
                S = "Acme Band"
              ),
              SongTitle = list(
                S = "Happy Day"
              )
            ),
            list(
              Artist = list(
                S = "No One You Know"
              ),
              SongTitle = list(
                S = "Scared of My Shadow"
              )
            )
          ),
          ProjectionExpression = "AlbumTitle"
        )
      )
    )

    ## End(Not run)
