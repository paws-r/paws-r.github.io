<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_custom_routing_endpoint_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describe an endpoint group for a custom routing accelerator

### Description

Describe an endpoint group for a custom routing accelerator.

### Usage

    globalaccelerator_describe_custom_routing_endpoint_group(
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
id="globalaccelerator_describe_custom_routing_endpoint_group_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint group
to describe.</p></td>
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

    svc$describe_custom_routing_endpoint_group(
      EndpointGroupArn = "string"
    )
