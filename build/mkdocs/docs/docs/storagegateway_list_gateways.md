<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_gateways</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists gateways owned by an Amazon Web Services account in an Amazon Web Services Region specified in the request

### Description

Lists gateways owned by an Amazon Web Services account in an Amazon Web
Services Region specified in the request. The returned list is ordered
by gateway Amazon Resource Name (ARN).

By default, the operation returns a maximum of 100 gateways. This
operation supports pagination that allows you to optionally reduce the
number of gateways returned in a response.

If you have more gateways than are returned in a response (that is, the
response returns only a truncated list of your gateways), the response
contains a marker that you can specify in your next request to fetch the
next page of gateways.

### Usage

    storagegateway_list_gateways(Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="storagegateway_list_gateways_:_Marker">Marker</code></td>
<td><p>An opaque string that indicates the position at which to begin
the returned list of gateways.</p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_list_gateways_:_Limit">Limit</code></td>
<td><p>Specifies that the list of gateways returned be limited to the
specified number of items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Gateways = list(
        list(
          GatewayId = "string",
          GatewayARN = "string",
          GatewayType = "string",
          GatewayOperationalState = "string",
          GatewayName = "string",
          Ec2InstanceId = "string",
          Ec2InstanceRegion = "string",
          HostEnvironment = "VMWARE"|"HYPER-V"|"EC2"|"KVM"|"OTHER"|"SNOWBALL",
          HostEnvironmentId = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_gateways(
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Lists gateways owned by an AWS account in a specified region as
    # requested. Results are sorted by gateway ARN up to a maximum of 100
    # gateways.
    svc$list_gateways(
      Limit = 2L,
      Marker = "1"
    )

    ## End(Not run)
