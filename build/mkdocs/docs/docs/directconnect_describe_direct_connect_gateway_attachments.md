<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_direct_connect_gateway_attachments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the attachments between your Direct Connect gateways and virtual interfaces

### Description

Lists the attachments between your Direct Connect gateways and virtual
interfaces. You must specify a Direct Connect gateway, a virtual
interface, or both. If you specify a Direct Connect gateway, the
response contains all virtual interfaces attached to the Direct Connect
gateway. If you specify a virtual interface, the response contains all
Direct Connect gateways attached to the virtual interface. If you
specify both, the response contains the attachment between the Direct
Connect gateway and the virtual interface.

### Usage

    directconnect_describe_direct_connect_gateway_attachments(
      directConnectGatewayId, virtualInterfaceId, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_attachments_:_directConnectGatewayId">directConnectGatewayId</code></td>
<td><p>The ID of the Direct Connect gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_attachments_:_virtualInterfaceId">virtualInterfaceId</code></td>
<td><p>The ID of the virtual interface.</p></td>
</tr>
<tr class="odd">
<td><code
id="directconnect_describe_direct_connect_gateway_attachments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p>
<p>If <code>MaxResults</code> is given a value larger than 100, only 100
results are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_describe_direct_connect_gateway_attachments_:_nextToken">nextToken</code></td>
<td><p>The token provided in the previous call to retrieve the next
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      directConnectGatewayAttachments = list(
        list(
          directConnectGatewayId = "string",
          virtualInterfaceId = "string",
          virtualInterfaceRegion = "string",
          virtualInterfaceOwnerAccount = "string",
          attachmentState = "attaching"|"attached"|"detaching"|"detached",
          attachmentType = "TransitVirtualInterface"|"PrivateVirtualInterface",
          stateChangeError = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_direct_connect_gateway_attachments(
      directConnectGatewayId = "string",
      virtualInterfaceId = "string",
      maxResults = 123,
      nextToken = "string"
    )
