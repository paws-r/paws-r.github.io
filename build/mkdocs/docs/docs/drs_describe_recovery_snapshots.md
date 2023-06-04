<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_describe_recovery_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Recovery Snapshots for a single Source Server

### Description

Lists all Recovery Snapshots for a single Source Server.

### Usage

    drs_describe_recovery_snapshots(filters, maxResults, nextToken, order,
      sourceServerID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_describe_recovery_snapshots_:_filters">filters</code></td>
<td><p>A set of filters by which to return Recovery Snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_describe_recovery_snapshots_:_maxResults">maxResults</code></td>
<td><p>Maximum number of Recovery Snapshots to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_recovery_snapshots_:_nextToken">nextToken</code></td>
<td><p>The token of the next Recovery Snapshot to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="drs_describe_recovery_snapshots_:_order">order</code></td>
<td><p>The sorted ordering by which to return Recovery
Snapshots.</p></td>
</tr>
<tr class="odd">
<td><code
id="drs_describe_recovery_snapshots_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] Filter Recovery Snapshots by Source Server
ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      items = list(
        list(
          ebsSnapshots = list(
            "string"
          ),
          expectedTimestamp = "string",
          snapshotID = "string",
          sourceServerID = "string",
          timestamp = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_recovery_snapshots(
      filters = list(
        fromDateTime = "string",
        toDateTime = "string"
      ),
      maxResults = 123,
      nextToken = "string",
      order = "ASC"|"DESC",
      sourceServerID = "string"
    )
