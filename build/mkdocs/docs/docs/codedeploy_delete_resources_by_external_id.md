<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_delete_resources_by_external_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes resources linked to an external ID

### Description

Deletes resources linked to an external ID.

### Usage

    codedeploy_delete_resources_by_external_id(externalId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_delete_resources_by_external_id_:_externalId">externalId</code></td>
<td><p>The unique ID of an external resource (for example, a
CloudFormation stack ID) that is linked to one or more CodeDeploy
resources.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resources_by_external_id(
      externalId = "string"
    )
