<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_describe_application_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a snapshot of application state data

### Description

Returns information about a snapshot of application state data.

### Usage

    kinesisanalyticsv2_describe_application_snapshot(ApplicationName,
      SnapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_describe_application_snapshot_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_describe_application_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] The identifier of an application snapshot. You can
retrieve this value using .</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotDetails = list(
        SnapshotName = "string",
        SnapshotStatus = "CREATING"|"READY"|"DELETING"|"FAILED",
        ApplicationVersionId = 123,
        SnapshotCreationTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_application_snapshot(
      ApplicationName = "string",
      SnapshotName = "string"
    )
