<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_delete_replication_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all Regions in your replication set

### Description

Deletes all Regions in your replication set. Deleting the replication
set deletes all Incident Manager data.

### Usage

    ssmincidents_delete_replication_set(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_delete_replication_set_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the replication set
you're deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_replication_set(
      arn = "string"
    )
