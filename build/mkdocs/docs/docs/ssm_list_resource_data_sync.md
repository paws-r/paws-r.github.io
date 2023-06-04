<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_resource_data_sync</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists your resource data sync configurations

### Description

Lists your resource data sync configurations. Includes information about
the last time a sync attempted to start, the last sync status, and the
last time a sync successfully completed.

The number of sync configurations might be too large to return using a
single call to `list_resource_data_sync`. You can limit the number of
sync configurations returned by using the `MaxResults` parameter. To
determine whether there are more sync configurations to list, check the
value of `NextToken` in the output. If there are more sync
configurations to list, you can request them by specifying the
`NextToken` returned in the call to the parameter of a subsequent call.

### Usage

    ssm_list_resource_data_sync(SyncType, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_resource_data_sync_:_SyncType">SyncType</code></td>
<td><p>View a list of resource data syncs according to the sync type.
Specify <code>SyncToDestination</code> to view resource data syncs that
synchronize data to an Amazon S3 bucket. Specify
<code>SyncFromSource</code> to view resource data syncs from
Organizations or from multiple Amazon Web Services Regions.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_resource_data_sync_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_resource_data_sync_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceDataSyncItems = list(
        list(
          SyncName = "string",
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
            State = "string",
            EnableAllOpsDataSources = TRUE|FALSE
          ),
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
          LastSyncTime = as.POSIXct(
            "2015-01-01"
          ),
          LastSuccessfulSyncTime = as.POSIXct(
            "2015-01-01"
          ),
          SyncLastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastStatus = "Successful"|"Failed"|"InProgress",
          SyncCreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastSyncStatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_data_sync(
      SyncType = "string",
      NextToken = "string",
      MaxResults = 123
    )
