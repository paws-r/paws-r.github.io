<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_routing_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides summary information about the routing profiles for the specified Amazon Connect instance

### Description

Provides summary information about the routing profiles for the
specified Amazon Connect instance.

For more information about routing profiles, see [Routing
Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
and [Create a Routing
Profile](https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_list_routing_profiles(InstanceId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_routing_profiles_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_routing_profiles_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_routing_profiles_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RoutingProfileSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_routing_profiles(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
