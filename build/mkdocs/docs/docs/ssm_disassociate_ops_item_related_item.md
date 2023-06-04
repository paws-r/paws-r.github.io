<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_disassociate_ops_item_related_item</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the association between an OpsItem and a related item

### Description

Deletes the association between an OpsItem and a related item. For
example, this API operation can delete an Incident Manager incident from
an OpsItem. Incident Manager is a capability of Amazon Web Services
Systems Manager.

### Usage

    ssm_disassociate_ops_item_related_item(OpsItemId, AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_disassociate_ops_item_related_item_:_OpsItemId">OpsItemId</code></td>
<td><p>[required] The ID of the OpsItem for which you want to delete an
association between the OpsItem and a related item.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_disassociate_ops_item_related_item_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the association for which you want to delete
an association between the OpsItem and a related item.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_ops_item_related_item(
      OpsItemId = "string",
      AssociationId = "string"
    )
