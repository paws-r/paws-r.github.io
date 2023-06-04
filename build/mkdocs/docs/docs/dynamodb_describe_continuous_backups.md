<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_continuous_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks the status of continuous backups and point in time recovery on the specified table

### Description

Checks the status of continuous backups and point in time recovery on
the specified table. Continuous backups are `ENABLED` on all tables at
table creation. If point in time recovery is enabled,
`PointInTimeRecoveryStatus` will be set to ENABLED.

After continuous backups and point in time recovery are enabled, you can
restore to any point in time within `EarliestRestorableDateTime` and
`LatestRestorableDateTime`.

`LatestRestorableDateTime` is typically 5 minutes before the current
time. You can restore your table to any point in time during the last 35
days.

You can call `describe_continuous_backups` at a maximum rate of 10 times
per second.

### Usage

    dynamodb_describe_continuous_backups(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_continuous_backups_:_TableName">TableName</code></td>
<td><p>[required] Name of the table for which the customer wants to
check the continuous backups and point in time recovery
settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContinuousBackupsDescription = list(
        ContinuousBackupsStatus = "ENABLED"|"DISABLED",
        PointInTimeRecoveryDescription = list(
          PointInTimeRecoveryStatus = "ENABLED"|"DISABLED",
          EarliestRestorableDateTime = as.POSIXct(
            "2015-01-01"
          ),
          LatestRestorableDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_continuous_backups(
      TableName = "string"
    )
