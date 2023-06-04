<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_delete_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a resource set

### Description

Deletes a resource set.

### Usage

    route53recoveryreadiness_delete_resource_set(ResourceSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_delete_resource_set_:_ResourceSetName">ResourceSetName</code></td>
<td><p>[required] Name of a resource set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_set(
      ResourceSetName = "string"
    )
