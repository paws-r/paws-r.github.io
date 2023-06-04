<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_custom_routing_endpoint_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the endpoint groups that are associated with a listener for a custom routing accelerator

### Description

List the endpoint groups that are associated with a listener for a
custom routing accelerator.

### Usage

    globalaccelerator_list_custom_routing_endpoint_groups(ListenerArn,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_endpoint_groups_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener to list
endpoint groups for.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_custom_routing_endpoint_groups_:_MaxResults">MaxResults</code></td>
<td><p>The number of endpoint group objects that you want to return with
this call. The default value is 10.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_list_custom_routing_endpoint_groups_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. You receive this token
from a previous call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointGroups = list(
        list(
          EndpointGroupArn = "string",
          EndpointGroupRegion = "string",
          DestinationDescriptions = list(
            list(
              FromPort = 123,
              ToPort = 123,
              Protocols = list(
                "TCP"|"UDP"
              )
            )
          ),
          EndpointDescriptions = list(
            list(
              EndpointId = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_custom_routing_endpoint_groups(
      ListenerArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
