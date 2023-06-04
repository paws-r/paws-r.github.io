<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_create_application_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of the application's state data

### Description

Creates a snapshot of the application's state data.

### Usage

    kinesisanalyticsv2_create_application_snapshot(ApplicationName,
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
id="kinesisanalyticsv2_create_application_snapshot_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_create_application_snapshot_:_SnapshotName">SnapshotName</code></td>
<td><p>[required] An identifier for the application snapshot.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_application_snapshot(
      ApplicationName = "string",
      SnapshotName = "string"
    )
