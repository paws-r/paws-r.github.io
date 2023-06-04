<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_delete_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified service

### Description

Deletes a specified service. If the service still contains one or more
registered instances, the request fails.

### Usage

    servicediscovery_delete_service(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_delete_service_:_Id">Id</code></td>
<td><p>[required] The ID of the service that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_service(
      Id = "string"
    )

### Examples

    ## Not run: 
    # Example: Delete service
    svc$delete_service(
      Id = "srv-p5zdwlg5uvvzjita"
    )

    ## End(Not run)
