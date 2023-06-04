<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_list_application_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the current application snapshots

### Description

Lists information about the current application snapshots.

### Usage

    kinesisanalyticsv2_list_application_snapshots(ApplicationName, Limit,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_application_snapshots_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_list_application_snapshots_:_Limit">Limit</code></td>
<td><p>The maximum number of application snapshots to list.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_list_application_snapshots_:_NextToken">NextToken</code></td>
<td><p>Use this parameter if you receive a <code>NextToken</code>
response in a previous request that indicates that there is more output
available. Set it to the value of the previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotSummaries = list(
        list(
          SnapshotName = "string",
          SnapshotStatus = "CREATING"|"READY"|"DELETING"|"FAILED",
          ApplicationVersionId = 123,
          SnapshotCreationTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_application_snapshots(
      ApplicationName = "string",
      Limit = 123,
      NextToken = "string"
    )
