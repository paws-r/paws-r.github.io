<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_list_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets paginated records, optionally changed after a particular sync count for a dataset and identity

### Description

Gets paginated records, optionally changed after a particular sync count
for a dataset and identity. With Amazon Cognito Sync, each identity has
access only to its own data. Thus, the credentials used to make this API
call need to have access to the identity data.

ListRecords can be called with temporary user credentials provided by
Cognito Identity or with developer credentials. You should use Cognito
Identity credentials to make this API call.

### Usage

    cognitosync_list_records(IdentityPoolId, IdentityId, DatasetName,
      LastSyncCount, NextToken, MaxResults, SyncSessionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_list_records_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_records_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_list_records_:_DatasetName">DatasetName</code></td>
<td><p>[required] A string of up to 128 characters. Allowed characters
are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_records_:_LastSyncCount">LastSyncCount</code></td>
<td><p>The last server sync count for this record.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_list_records_:_NextToken">NextToken</code></td>
<td><p>A pagination token for obtaining the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_list_records_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_list_records_:_SyncSessionToken">SyncSessionToken</code></td>
<td><p>A token containing a session ID, identity ID, and
expiration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          Key = "string",
          Value = "string",
          SyncCount = 123,
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string",
          DeviceLastModifiedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Count = 123,
      DatasetSyncCount = 123,
      LastModifiedBy = "string",
      MergedDatasetNames = list(
        "string"
      ),
      DatasetExists = TRUE|FALSE,
      DatasetDeletedAfterRequestedSyncCount = TRUE|FALSE,
      SyncSessionToken = "string"
    )

### Request syntax

    svc$list_records(
      IdentityPoolId = "string",
      IdentityId = "string",
      DatasetName = "string",
      LastSyncCount = 123,
      NextToken = "string",
      MaxResults = 123,
      SyncSessionToken = "string"
    )
