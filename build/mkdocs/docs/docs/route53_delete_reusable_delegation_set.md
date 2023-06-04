<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_reusable_delegation_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a reusable delegation set

### Description

Deletes a reusable delegation set.

You can delete a reusable delegation set only if it isn't associated
with any hosted zones.

To verify that the reusable delegation set is not associated with any
hosted zones, submit a `get_reusable_delegation_set` request and specify
the ID of the reusable delegation set that you want to delete.

### Usage

    route53_delete_reusable_delegation_set(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_delete_reusable_delegation_set_:_Id">Id</code></td>
<td><p>[required] The ID of the reusable delegation set that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_reusable_delegation_set(
      Id = "string"
    )
