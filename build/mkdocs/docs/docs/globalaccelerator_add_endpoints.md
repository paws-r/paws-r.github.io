<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_add_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add endpoints to an endpoint group

### Description

Add endpoints to an endpoint group. The `add_endpoints` API operation is
the recommended option for adding endpoints. The alternative options are
to add endpoints when you create an endpoint group (with the
`create_endpoint_group` API) or when you update an endpoint group (with
the `update_endpoint_group` API).

There are two advantages to using `add_endpoints` to add endpoints:

-   It's faster, because Global Accelerator only has to resolve the new
    endpoints that you're adding.

-   It's more convenient, because you don't need to specify all of the
    current endpoints that are already in the endpoint group in addition
    to the new endpoints that you want to add.

### Usage

    globalaccelerator_add_endpoints(EndpointConfigurations,
      EndpointGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_add_endpoints_:_EndpointConfigurations">EndpointConfigurations</code></td>
<td><p>[required] The list of endpoint objects.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_add_endpoints_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointDescriptions = list(
        list(
          EndpointId = "string",
          Weight = 123,
          HealthState = "INITIAL"|"HEALTHY"|"UNHEALTHY",
          HealthReason = "string",
          ClientIPPreservationEnabled = TRUE|FALSE
        )
      ),
      EndpointGroupArn = "string"
    )

### Request syntax

    svc$add_endpoints(
      EndpointConfigurations = list(
        list(
          EndpointId = "string",
          Weight = 123,
          ClientIPPreservationEnabled = TRUE|FALSE
        )
      ),
      EndpointGroupArn = "string"
    )
