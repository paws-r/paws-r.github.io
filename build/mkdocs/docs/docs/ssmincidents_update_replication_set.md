<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_update_replication_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add or delete Regions from your replication set

### Description

Add or delete Regions from your replication set.

### Usage

    ssmincidents_update_replication_set(actions, arn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_update_replication_set_:_actions">actions</code></td>
<td><p>[required] An action to add or delete a Region.</p></td>
</tr>
<tr class="even">
<td><code id="ssmincidents_update_replication_set_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the replication set
you're updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmincidents_update_replication_set_:_clientToken">clientToken</code></td>
<td><p>A token that ensures that the operation is called only once with
the specified details.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_replication_set(
      actions = list(
        list(
          addRegionAction = list(
            regionName = "string",
            sseKmsKeyId = "string"
          ),
          deleteRegionAction = list(
            regionName = "string"
          )
        )
      ),
      arn = "string",
      clientToken = "string"
    )
