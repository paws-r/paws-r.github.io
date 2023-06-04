<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains information about the directory snapshots that belong to this account

### Description

Obtains information about the directory snapshots that belong to this
account.

This operation supports pagination with the use of the *NextToken*
request and response parameters. If more results are available, the
*DescribeSnapshots.NextToken* member contains a token that you pass in
the next call to `describe_snapshots` to retrieve the next set of items.

You can also specify a maximum number of return results with the *Limit*
parameter.

### Usage

    directoryservice_describe_snapshots(DirectoryId, SnapshotIds, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_snapshots_:_DirectoryId">DirectoryId</code></td>
<td><p>The identifier of the directory for which to retrieve snapshot
information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_snapshots_:_SnapshotIds">SnapshotIds</code></td>
<td><p>A list of identifiers of the snapshots to obtain the information
for. If this member is null or empty, all snapshots are returned using
the <em>Limit</em> and <em>NextToken</em> members.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_snapshots_:_NextToken">NextToken</code></td>
<td><p>The <em>DescribeSnapshotsResult.NextToken</em> value from a
previous call to <code>describe_snapshots</code>. Pass null if this is
the first call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_snapshots_:_Limit">Limit</code></td>
<td><p>The maximum number of objects to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Snapshots = list(
        list(
          DirectoryId = "string",
          SnapshotId = "string",
          Type = "Auto"|"Manual",
          Name = "string",
          Status = "Creating"|"Completed"|"Failed",
          StartTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_snapshots(
      DirectoryId = "string",
      SnapshotIds = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
