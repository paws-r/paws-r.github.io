<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_update_instance_custom_health_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a request to change the health status of a custom health check to healthy or unhealthy

### Description

Submits a request to change the health status of a custom health check
to healthy or unhealthy.

You can use `update_instance_custom_health_status` to change the status
only for custom health checks, which you define using
`HealthCheckCustomConfig` when you create a service. You can't use it to
change the status for Route 53 health checks, which you define using
`HealthCheckConfig`.

For more information, see
[HealthCheckCustomConfig](https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html).

### Usage

    servicediscovery_update_instance_custom_health_status(ServiceId,
      InstanceId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_update_instance_custom_health_status_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service that includes the configuration
for the custom health check that you want to change the status
for.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_update_instance_custom_health_status_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance that you want to change the
health status for.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_update_instance_custom_health_status_:_Status">Status</code></td>
<td><p>[required] The new status of the instance, <code>HEALTHY</code>
or <code>UNHEALTHY</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_instance_custom_health_status(
      ServiceId = "string",
      InstanceId = "string",
      Status = "HEALTHY"|"UNHEALTHY"
    )

### Examples

    ## Not run: 
    # This example submits a request to change the health status of an
    # instance associated with a service with a custom health check to
    # HEALTHY.
    svc$update_instance_custom_health_status(
      InstanceId = "i-abcd1234",
      ServiceId = "srv-e4anhexample0004",
      Status = "HEALTHY"
    )

    ## End(Not run)
