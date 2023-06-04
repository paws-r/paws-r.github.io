<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_get_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a namespace

### Description

Gets information about a namespace.

### Usage

    servicediscovery_get_namespace(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="servicediscovery_get_namespace_:_Id">Id</code></td>
<td><p>[required] The ID of the namespace that you want to get
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Namespace = list(
        Id = "string",
        Arn = "string",
        Name = "string",
        Type = "DNS_PUBLIC"|"DNS_PRIVATE"|"HTTP",
        Description = "string",
        ServiceCount = 123,
        Properties = list(
          DnsProperties = list(
            HostedZoneId = "string",
            SOA = list(
              TTL = 123
            )
          ),
          HttpProperties = list(
            HttpName = "string"
          )
        ),
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        CreatorRequestId = "string"
      )
    )

### Request syntax

    svc$get_namespace(
      Id = "string"
    )

### Examples

    ## Not run: 
    # This example gets information about a specified namespace.
    svc$get_namespace(
      Id = "ns-e4anhexample0004"
    )

    ## End(Not run)
