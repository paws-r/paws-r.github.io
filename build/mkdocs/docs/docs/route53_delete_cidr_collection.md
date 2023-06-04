<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_cidr_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a CIDR collection in the current Amazon Web Services account

### Description

Deletes a CIDR collection in the current Amazon Web Services account.
The collection must be empty before it can be deleted.

### Usage

    route53_delete_cidr_collection(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_delete_cidr_collection_:_Id">Id</code></td>
<td><p>[required] The UUID of the collection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cidr_collection(
      Id = "string"
    )
