<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_resource_data_sync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A resource data sync helps you view data from multiple sources in a single location

### Description

A resource data sync helps you view data from multiple sources in a
single location. Amazon Web Services Systems Manager offers two types of
resource data sync: `SyncToDestination` and `SyncFromSource`.

You can configure Systems Manager Inventory to use the
`SyncToDestination` type to synchronize Inventory data from multiple
Amazon Web Services Regions to a single Amazon Simple Storage Service
(Amazon S3) bucket. For more information, see [Configuring resource data
sync for
Inventory](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html)
in the *Amazon Web Services Systems Manager User Guide*.

You can configure Systems Manager Explorer to use the `SyncFromSource`
type to synchronize operational work items (OpsItems) and operational
data (OpsData) from multiple Amazon Web Services Regions to a single
Amazon S3 bucket. This type can synchronize OpsItems and OpsData from
multiple Amazon Web Services accounts and Amazon Web Services Regions or
`EntireOrganization` by using Organizations. For more information, see
[Setting up Systems Manager Explorer to display data from multiple
accounts and
Regions](https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html)
in the *Amazon Web Services Systems Manager User Guide*.

A resource data sync is an asynchronous operation that returns
immediately. After a successful initial sync is completed, the system
continuously syncs data. To check the status of a sync, use the
`list_resource_data_sync`.

By default, data isn't encrypted in Amazon S3. We strongly recommend
that you enable encryption in Amazon S3 to ensure secure data storage.
We also recommend that you secure access to the Amazon S3 bucket by
creating a restrictive bucket policy.

### Usage

    ssm_create_resource_data_sync(SyncName, S3Destination, SyncType,
      SyncSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_create_resource_data_sync_:_SyncName">SyncName</code></td>
<td><p>[required] A name for the configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_resource_data_sync_:_S3Destination">S3Destination</code></td>
<td><p>Amazon S3 configuration details for the sync. This parameter is
required if the <code>SyncType</code> value is
SyncToDestination.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_resource_data_sync_:_SyncType">SyncType</code></td>
<td><p>Specify <code>SyncToDestination</code> to create a resource data
sync that synchronizes data to an S3 bucket for Inventory. If you
specify <code>SyncToDestination</code>, you must provide a value for
<code>S3Destination</code>. Specify <code>SyncFromSource</code> to
synchronize data from a single account and multiple Regions, or multiple
Amazon Web Services accounts and Amazon Web Services Regions, as listed
in Organizations for Explorer. If you specify
<code>SyncFromSource</code>, you must provide a value for
<code>SyncSource</code>. The default value is
<code>SyncToDestination</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_resource_data_sync_:_SyncSource">SyncSource</code></td>
<td><p>Specify information about the data sources to synchronize. This
parameter is required if the <code>SyncType</code> value is
SyncFromSource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_resource_data_sync(
      SyncName = "string",
      S3Destination = list(
        BucketName = "string",
        Prefix = "string",
        SyncFormat = "JsonSerDe",
        Region = "string",
        AWSKMSKeyARN = "string",
        DestinationDataSharing = list(
          DestinationDataSharingType = "string"
        )
      ),
      SyncType = "string",
      SyncSource = list(
        SourceType = "string",
        AwsOrganizationsSource = list(
          OrganizationSourceType = "string",
          OrganizationalUnits = list(
            list(
              OrganizationalUnitId = "string"
            )
          )
        ),
        SourceRegions = list(
          "string"
        ),
        IncludeFutureRegions = TRUE|FALSE,
        EnableAllOpsDataSources = TRUE|FALSE
      )
    )
