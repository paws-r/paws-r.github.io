<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_get_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the settings for a specified service

### Description

Gets the settings for a specified service.

### Usage

    servicediscovery_get_service(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_get_service_:_Id">Id</code></td>
<td><p>[required] The ID of the service that you want to get settings
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Service = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        NamespaceId = "string",
        Description = "string",
        InstanceCount = 123,
        DnsConfig = list(
          NamespaceId = "string",
          RoutingPolicy = "MULTIVALUE"|"WEIGHTED",
          DnsRecords = list(
            list(
              Type = "SRV"|"A"|"AAAA"|"CNAME",
              TTL = 123
            )
          )
        ),
        Type = "HTTP"|"DNS_HTTP"|"DNS",
        HealthCheckConfig = list(
          Type = "HTTP"|"HTTPS"|"TCP",
          ResourcePath = "string",
          FailureThreshold = 123
        ),
        HealthCheckCustomConfig = list(
          FailureThreshold = 123
        ),
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        CreatorRequestId = "string"
      )
    )

### Request syntax

    svc$get_service(
      Id = "string"
    )

### Examples

    ## Not run: 
    # This example gets the settings for a specified service.
    svc$get_service(
      Id = "srv-e4anhexample0004"
    )

    ## End(Not run)
