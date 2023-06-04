<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_continuous_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## UpdateContinuousBackups enables or disables point in time recovery for the specified table

### Description

`update_continuous_backups` enables or disables point in time recovery
for the specified table. A successful `update_continuous_backups` call
returns the current `ContinuousBackupsDescription`. Continuous backups
are `ENABLED` on all tables at table creation. If point in time recovery
is enabled, `PointInTimeRecoveryStatus` will be set to ENABLED.

Once continuous backups and point in time recovery are enabled, you can
restore to any point in time within `EarliestRestorableDateTime` and
`LatestRestorableDateTime`.

`LatestRestorableDateTime` is typically 5 minutes before the current
time. You can restore your table to any point in time during the last 35
days.

### Usage

    dynamodb_update_continuous_backups(TableName,
      PointInTimeRecoverySpecification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_continuous_backups_:_TableName">TableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_continuous_backups_:_PointInTimeRecoverySpecification">PointInTimeRecoverySpecification</code></td>
<td><p>[required] Represents the settings used to enable point in time
recovery.</p></td>
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

    svc$update_continuous_backups(
      TableName = "string",
      PointInTimeRecoverySpecification = list(
        PointInTimeRecoveryEnabled = TRUE|FALSE
      )
    )
