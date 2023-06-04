<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_remove_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove endpoints from an endpoint group

### Description

Remove endpoints from an endpoint group.

The `remove_endpoints` API operation is the recommended option for
removing endpoints. The alternative is to remove endpoints by updating
an endpoint group by using the `update_endpoint_group` API operation.
There are two advantages to using `add_endpoints` to remove endpoints
instead:

-   It's more convenient, because you only need to specify the endpoints
    that you want to remove. With the `update_endpoint_group` API
    operation, you must specify all of the endpoints in the endpoint
    group except the ones that you want to remove from the group.

-   It's faster, because Global Accelerator doesn't need to resolve any
    endpoints. With the `update_endpoint_group` API operation, Global
    Accelerator must resolve all of the endpoints that remain in the
    group.

### Usage

    globalaccelerator_remove_endpoints(EndpointIdentifiers,
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
id="globalaccelerator_remove_endpoints_:_EndpointIdentifiers">EndpointIdentifiers</code></td>
<td><p>[required] The identifiers of the endpoints that you want to
remove.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_remove_endpoints_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint
group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_endpoints(
      EndpointIdentifiers = list(
        list(
          EndpointId = "string",
          ClientIPPreservationEnabled = TRUE|FALSE
        )
      ),
      EndpointGroupArn = "string"
    )
