<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List backups associated with an Amazon Web Services account

### Description

List backups associated with an Amazon Web Services account. To list
backups for a given table, specify `TableName`. `list_backups` returns a
paginated list of results with at most 1 MB worth of items in a page.
You can also specify a maximum number of entries to be returned in a
page.

In the request, start time is inclusive, but end time is exclusive. Note
that these boundaries are for the time at which the original backup was
requested.

You can call `list_backups` a maximum of five times per second.

### Usage

    dynamodb_list_backups(TableName, Limit, TimeRangeLowerBound,
      TimeRangeUpperBound, ExclusiveStartBackupArn, BackupType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_list_backups_:_TableName">TableName</code></td>
<td><p>The backups from the table specified by <code>TableName</code>
are listed.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_backups_:_Limit">Limit</code></td>
<td><p>Maximum number of backups to return at once.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_list_backups_:_TimeRangeLowerBound">TimeRangeLowerBound</code></td>
<td><p>Only backups created after this time are listed.
<code>TimeRangeLowerBound</code> is inclusive.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_list_backups_:_TimeRangeUpperBound">TimeRangeUpperBound</code></td>
<td><p>Only backups created before this time are listed.
<code>TimeRangeUpperBound</code> is exclusive.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_list_backups_:_ExclusiveStartBackupArn">ExclusiveStartBackupArn</code></td>
<td><p><code>LastEvaluatedBackupArn</code> is the Amazon Resource Name
(ARN) of the backup last evaluated when the current page of results was
returned, inclusive of the current page of results. This value may be
specified as the <code>ExclusiveStartBackupArn</code> of a new
<code>list_backups</code> operation in order to fetch the next page of
results.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_list_backups_:_BackupType">BackupType</code></td>
<td><p>The backups from the table specified by <code>BackupType</code>
are listed.</p>
<p>Where <code>BackupType</code> can be:</p>
<ul>
<li><p><code>USER</code> - On-demand backup created by you. (The default
setting if no other backup types are specified.)</p></li>
<li><p><code>SYSTEM</code> - On-demand backup automatically created by
DynamoDB.</p></li>
<li><p><code>ALL</code> - All types of on-demand backups (USER and
SYSTEM).</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupSummaries = list(
        list(
          TableName = "string",
          TableId = "string",
          TableArn = "string",
          BackupArn = "string",
          BackupName = "string",
          BackupCreationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          BackupExpiryDateTime = as.POSIXct(
            "2015-01-01"
          ),
          BackupStatus = "CREATING"|"DELETED"|"AVAILABLE",
          BackupType = "USER"|"SYSTEM"|"AWS_BACKUP",
          BackupSizeBytes = 123
        )
      ),
      LastEvaluatedBackupArn = "string"
    )

### Request syntax

    svc$list_backups(
      TableName = "string",
      Limit = 123,
      TimeRangeLowerBound = as.POSIXct(
        "2015-01-01"
      ),
      TimeRangeUpperBound = as.POSIXct(
        "2015-01-01"
      ),
      ExclusiveStartBackupArn = "string",
      BackupType = "USER"|"SYSTEM"|"AWS_BACKUP"|"ALL"
    )
