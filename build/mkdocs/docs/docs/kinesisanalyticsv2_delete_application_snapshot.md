<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a snapshot of application state

### Description

Deletes a snapshot of application state.

### Usage

    kinesisanalyticsv2_delete_application_snapshot(ApplicationName,
      SnapshotName, SnapshotCreationTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_snapshot_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] The identifier for the snapshot delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_snapshot_:_SnapshotCreationTimestamp">SnapshotCreationTimestamp</code></td>
<td><p>[required] The creation timestamp of the application snapshot to
delete. You can retrieve this value using or .</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application_snapshot(
      ApplicationName = "string",
      SnapshotName = "string",
      SnapshotCreationTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )
