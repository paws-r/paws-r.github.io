<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_list_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of snapshots

### Description

Returns a list of snapshots.

### Usage

    redshiftserverless_list_snapshots(endTime, maxResults, namespaceArn,
      namespaceName, nextToken, ownerAccount, startTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_list_snapshots_:_endTime">endTime</code></td>
<td><p>The timestamp showing when the snapshot creation
finished.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_snapshots_:_maxResults">maxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to display the
next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_snapshots_:_namespaceArn">namespaceArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the namespace from which to
list all snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_snapshots_:_namespaceName">namespaceName</code></td>
<td><p>The namespace from which to list all snapshots.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_snapshots_:_nextToken">nextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_list_snapshots_:_ownerAccount">ownerAccount</code></td>
<td><p>The owner Amazon Web Services account of the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_list_snapshots_:_startTime">startTime</code></td>
<td><p>The time when the creation of the snapshot was
initiated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      snapshots = list(
        list(
          accountsWithProvisionedRestoreAccess = list(
            "string"
          ),
          accountsWithRestoreAccess = list(
            "string"
          ),
          actualIncrementalBackupSizeInMegaBytes = 123.0,
          adminUsername = "string",
          backupProgressInMegaBytes = 123.0,
          currentBackupRateInMegaBytesPerSecond = 123.0,
          elapsedTimeInSeconds = 123,
          estimatedSecondsToCompletion = 123,
          kmsKeyId = "string",
          namespaceArn = "string",
          namespaceName = "string",
          ownerAccount = "string",
          snapshotArn = "string",
          snapshotCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          snapshotName = "string",
          snapshotRemainingDays = 123,
          snapshotRetentionPeriod = 123,
          snapshotRetentionStartTime = as.POSIXct(
            "2015-01-01"
          ),
          status = "AVAILABLE"|"CREATING"|"DELETED"|"CANCELLED"|"FAILED"|"COPYING",
          totalBackupSizeInMegaBytes = 123.0
        )
      )
    )

### Request syntax

    svc$list_snapshots(
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      maxResults = 123,
      namespaceArn = "string",
      namespaceName = "string",
      nextToken = "string",
      ownerAccount = "string",
      startTime = as.POSIXct(
        "2015-01-01"
      )
    )
