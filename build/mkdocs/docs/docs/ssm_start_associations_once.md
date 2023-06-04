<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_start_associations_once</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs an association immediately and only one time

### Description

Runs an association immediately and only one time. This operation can be
helpful when troubleshooting associations.

### Usage

    ssm_start_associations_once(AssociationIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_start_associations_once_:_AssociationIds">AssociationIds</code></td>
<td><p>[required] The association IDs that you want to run immediately
and only one time.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_associations_once(
      AssociationIds = list(
        "string"
      )
    )
