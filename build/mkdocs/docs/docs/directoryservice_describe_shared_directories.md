<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_shared_directories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the shared directories in your account

### Description

Returns the shared directories in your account.

### Usage

    directoryservice_describe_shared_directories(OwnerDirectoryId,
      SharedDirectoryIds, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_shared_directories_:_OwnerDirectoryId">OwnerDirectoryId</code></td>
<td><p>[required] Returns the identifier of the directory in the
directory owner account.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_shared_directories_:_SharedDirectoryIds">SharedDirectoryIds</code></td>
<td><p>A list of identifiers of all shared directories in your
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_shared_directories_:_NextToken">NextToken</code></td>
<td><p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value
from a previous call to <code>describe_shared_directories</code>. Pass
null if this is the first call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_shared_directories_:_Limit">Limit</code></td>
<td><p>The number of shared directories to return in the response
object.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SharedDirectories = list(
        list(
          OwnerAccountId = "string",
          OwnerDirectoryId = "string",
          ShareMethod = "ORGANIZATIONS"|"HANDSHAKE",
          SharedAccountId = "string",
          SharedDirectoryId = "string",
          ShareStatus = "Shared"|"PendingAcceptance"|"Rejected"|"Rejecting"|"RejectFailed"|"Sharing"|"ShareFailed"|"Deleted"|"Deleting",
          ShareNotes = "string",
          CreatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_shared_directories(
      OwnerDirectoryId = "string",
      SharedDirectoryIds = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
