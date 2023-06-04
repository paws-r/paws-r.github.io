<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the tags associated with the specified resource

### Description

Retrieves the tags associated with the specified resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the tag
key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource, up
to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
Network Firewall: firewalls, firewall policies, and rule groups.

### Usage

    networkfirewall_list_tags_for_resource(NextToken, MaxResults,
      ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects with a <code>MaxResults</code>
setting, if the number of objects that are still available for retrieval
exceeds the maximum you requested, Network Firewall returns a
<code>NextToken</code> value in the response. To retrieve the next batch
of objects, use the token returned from the prior request in your next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_list_tags_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Network Firewall to
return for this request. If more objects are available, in the response,
Network Firewall provides a <code>NextToken</code> value that you can
use in a subsequent call to get the next batch of objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      NextToken = "string",
      MaxResults = 123,
      ResourceArn = "string"
    )
