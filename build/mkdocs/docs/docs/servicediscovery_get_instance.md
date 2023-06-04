<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_get_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified instance

### Description

Gets information about a specified instance.

### Usage

    servicediscovery_get_instance(ServiceId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_get_instance_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that the instance is associated
with.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_get_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance that you want to get
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instance = list(
        Id = "string",
        CreatorRequestId = "string",
        Attributes = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_instance(
      ServiceId = "string",
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example gets information about a specified instance.
    svc$get_instance(
      InstanceId = "i-abcd1234",
      ServiceId = "srv-e4anhexample0004"
    )

    ## End(Not run)
