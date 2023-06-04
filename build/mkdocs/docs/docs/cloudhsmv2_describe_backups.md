<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_describe_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about backups of AWS CloudHSM clusters

### Description

Gets information about backups of AWS CloudHSM clusters.

This is a paginated operation, which means that each response might
contain only a subset of all the backups. When the response contains
only a subset of backups, it includes a `NextToken` value. Use this
value in a subsequent `describe_backups` request to get more backups.
When you receive a response with no `NextToken` (or an empty or null
value), that means there are no more backups to get.

### Usage

    cloudhsmv2_describe_backups(NextToken, MaxResults, Filters,
      SortAscending)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_describe_backups_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value that you received in the
previous response. Use this value to get more backups.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_describe_backups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of backups to return in the response. When
there are more backups than the number you specify, the response
contains a <code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsmv2_describe_backups_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the items returned in the
response.</p>
<p>Use the <code>backupIds</code> filter to return only the specified
backups. Specify backups by their backup identifier (ID).</p>
<p>Use the <code>sourceBackupIds</code> filter to return only the
backups created from a source backup. The <code>sourceBackupID</code> of
a source backup is returned by the <code>copy_backup_to_region</code>
operation.</p>
<p>Use the <code>clusterIds</code> filter to return only the backups for
the specified clusters. Specify clusters by their cluster identifier
(ID).</p>
<p>Use the <code>states</code> filter to return only backups that match
the specified state.</p>
<p>Use the <code>neverExpires</code> filter to return backups filtered
by the value in the <code>neverExpires</code> parameter.
<code>True</code> returns all backups exempt from the backup retention
policy. <code>False</code> returns all backups with a backup retention
policy defined at the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_describe_backups_:_SortAscending">SortAscending</code></td>
<td><p>Designates whether or not to sort the return backups by ascending
chronological order of generation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backups = list(
        list(
          BackupId = "string",
          BackupState = "CREATE_IN_PROGRESS"|"READY"|"DELETED"|"PENDING_DELETION",
          ClusterId = "string",
          CreateTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          CopyTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          NeverExpires = TRUE|FALSE,
          SourceRegion = "string",
          SourceBackup = "string",
          SourceCluster = "string",
          DeleteTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_backups(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          "string"
        )
      ),
      SortAscending = TRUE|FALSE
    )
