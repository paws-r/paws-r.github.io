<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_snapshot_schedules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of snapshot schedules

### Description

Returns a list of snapshot schedules.

### Usage

    redshift_describe_snapshot_schedules(ClusterIdentifier,
      ScheduleIdentifier, TagKeys, TagValues, Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_snapshot_schedules_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The unique identifier for the cluster whose snapshot schedules
you want to view.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_snapshot_schedules_:_ScheduleIdentifier">ScheduleIdentifier</code></td>
<td><p>A unique identifier for a snapshot schedule.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_snapshot_schedules_:_TagKeys">TagKeys</code></td>
<td><p>The key value for a snapshot schedule tag.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_snapshot_schedules_:_TagValues">TagValues</code></td>
<td><p>The value corresponding to the key of the snapshot schedule
tag.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_snapshot_schedules_:_Marker">Marker</code></td>
<td><p>A value that indicates the starting point for the next set of
response records in a subsequent request. If a value is returned in a
response, you can retrieve the next set of records by providing this
returned marker value in the <code>marker</code> parameter and retrying
the command. If the <code>marker</code> field is empty, all response
records have been retrieved for the request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_snapshot_schedules_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number or response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned <code>marker</code>
value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotSchedules = list(
        list(
          ScheduleDefinitions = list(
            "string"
          ),
          ScheduleIdentifier = "string",
          ScheduleDescription = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          NextInvocations = list(
            as.POSIXct(
              "2015-01-01"
            )
          ),
          AssociatedClusterCount = 123,
          AssociatedClusters = list(
            list(
              ClusterIdentifier = "string",
              ScheduleAssociationState = "MODIFYING"|"ACTIVE"|"FAILED"
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_snapshot_schedules(
      ClusterIdentifier = "string",
      ScheduleIdentifier = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      ),
      Marker = "string",
      MaxRecords = 123
    )
