<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_delete_source_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single Source Server by ID

### Description

Deletes a single Source Server by ID. The Source Server must be
disconnected first.

### Usage

    drs_delete_source_server(sourceServerID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_delete_source_server_:_sourceServerID">sourceServerID</code></td>
<td><p>[required] The ID of the Source Server to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_source_server(
      sourceServerID = "string"
    )
