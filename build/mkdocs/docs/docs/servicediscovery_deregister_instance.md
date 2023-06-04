<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_deregister_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified instance

### Description

Deletes the Amazon Route 53 DNS records and health check, if any, that
Cloud Map created for the specified instance.

### Usage

    servicediscovery_deregister_instance(ServiceId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_deregister_instance_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that the instance is associated
with.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_deregister_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The value that you specified for <code>Id</code> in
the <code>register_instance</code> request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$deregister_instance(
      ServiceId = "string",
      InstanceId = "string"
    )

### Examples

    ## Not run: 
    # Example: Deregister a service instance
    svc$deregister_instance(
      InstanceId = "myservice-53",
      ServiceId = "srv-p5zdwlg5uvvzjita"
    )

    ## End(Not run)
