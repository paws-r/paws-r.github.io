<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_create_custom_routing_endpoint_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an endpoint group for the specified listener for a custom routing accelerator

### Description

Create an endpoint group for the specified listener for a custom routing
accelerator. An endpoint group is a collection of endpoints in one
Amazon Web Services Region.

### Usage

    globalaccelerator_create_custom_routing_endpoint_group(ListenerArn,
      EndpointGroupRegion, DestinationConfigurations, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_endpoint_group_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener for a
custom routing endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_endpoint_group_:_EndpointGroupRegion">EndpointGroupRegion</code></td>
<td><p>[required] The Amazon Web Services Region where the endpoint
group is located. A listener can have only one endpoint group in a
specific Region.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_endpoint_group_:_DestinationConfigurations">DestinationConfigurations</code></td>
<td><p>[required] Sets the port range and protocol for all endpoints
(virtual private cloud subnets) in a custom routing endpoint group to
accept client traffic on.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_endpoint_group_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency—that is, the uniqueness—of the
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointGroup = list(
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
    )

### Request syntax

    svc$create_custom_routing_endpoint_group(
      ListenerArn = "string",
      EndpointGroupRegion = "string",
      DestinationConfigurations = list(
        list(
          FromPort = 123,
          ToPort = 123,
          Protocols = list(
            "TCP"|"UDP"
          )
        )
      ),
      IdempotencyToken = "string"
    )
