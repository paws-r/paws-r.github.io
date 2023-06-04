<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_update_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a request to perform the following operations:

### Description

Submits a request to perform the following operations:

-   Update the TTL setting for existing `DnsRecords` configurations

-   Add, update, or delete `HealthCheckConfig` for a specified service

    You can't add, update, or delete a `HealthCheckCustomConfig`
    configuration.

For public and private DNS namespaces, note the following:

-   If you omit any existing `DnsRecords` or `HealthCheckConfig`
    configurations from an `update_service` request, the configurations
    are deleted from the service.

-   If you omit an existing `HealthCheckCustomConfig` configuration from
    an `update_service` request, the configuration isn't deleted from
    the service.

When you update settings for a service, Cloud Map also updates the
corresponding settings in all the records and health checks that were
created by using the specified service.

### Usage

    servicediscovery_update_service(Id, Service)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_update_service_:_Id">Id</code></td>
<td><p>[required] The ID of the service that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_update_service_:_Service">Service</code></td>
<td><p>[required] A complex type that contains the new settings for the
service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$update_service(
      Id = "string",
      Service = list(
        Description = "string",
        DnsConfig = list(
          DnsRecords = list(
            list(
              Type = "SRV"|"A"|"AAAA"|"CNAME",
              TTL = 123
            )
          )
        ),
        HealthCheckConfig = list(
          Type = "HTTP"|"HTTPS"|"TCP",
          ResourcePath = "string",
          FailureThreshold = 123
        )
      )
    )

### Examples

    ## Not run: 
    # This example submits a request to replace the DnsConfig and
    # HealthCheckConfig settings of a specified service.
    svc$update_service(
      Id = "srv-e4anhexample0004",
      Service = list(
        DnsConfig = list(
          DnsRecords = list(
            list(
              TTL = 60L,
              Type = "A"
            )
          )
        ),
        HealthCheckConfig = list(
          FailureThreshold = 2L,
          ResourcePath = "/",
          Type = "HTTP"
        )
      )
    )

    ## End(Not run)
