<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the regional endpoint information

### Description

Returns the regional endpoint information. This action must be included
in your VPC endpoint policies, or access to the DescribeEndpoints API
will be denied. For more information on policy permissions, please see
[Internetwork traffic
privacy](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints).

### Usage

    dynamodb_describe_endpoints()

### Value

A list with the following syntax:

    list(
      Endpoints = list(
        list(
          Address = "string",
          CachePeriodInMinutes = 123
        )
      )
    )

### Request syntax

    svc$describe_endpoints()
