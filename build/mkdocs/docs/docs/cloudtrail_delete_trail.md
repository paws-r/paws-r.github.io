<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_delete_trail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a trail

### Description

Deletes a trail. This operation must be called from the region in which
the trail was created. `delete_trail` cannot be called on the shadow
trails (replicated trails in other regions) of a trail that is enabled
in all regions.

### Usage

    cloudtrail_delete_trail(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudtrail_delete_trail_:_Name">Name</code></td>
<td><p>[required] Specifies the name or the CloudTrail ARN of the trail
to be deleted. The following is the format of a trail ARN.
<code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_trail(
      Name = "string"
    )
