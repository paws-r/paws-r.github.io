<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_delete_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a namespace from the current account

### Description

Deletes a namespace from the current account. If the namespace still
contains one or more services, the request fails.

### Usage

    servicediscovery_delete_namespace(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_delete_namespace_:_Id">Id</code></td>
<td><p>[required] The ID of the namespace that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$delete_namespace(
      Id = "string"
    )

### Examples

    ## Not run: 
    # Example: Delete namespace
    svc$delete_namespace(
      Id = "ns-ylexjili4cdxy3xm"
    )

    ## End(Not run)
