<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_list_firewalls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the metadata for the firewalls that you have defined

### Description

Retrieves the metadata for the firewalls that you have defined. If you
provide VPC identifiers in your request, this returns only the firewalls
for those VPCs.

Depending on your setting for max results and the number of firewalls, a
single call might not return the full list.

### Usage

    networkfirewall_list_firewalls(NextToken, VpcIds, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_list_firewalls_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects with a <code>MaxResults</code>
setting, if the number of objects that are still available for retrieval
exceeds the maximum you requested, Network Firewall returns a
<code>NextToken</code> value in the response. To retrieve the next batch
of objects, use the token returned from the prior request in your next
request.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_list_firewalls_:_VpcIds">VpcIds</code></td>
<td><p>The unique identifiers of the VPCs that you want Network Firewall
to retrieve the firewalls for. Leave this blank to retrieve all
firewalls that you have defined.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_list_firewalls_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Network Firewall to
return for this request. If more objects are available, in the response,
Network Firewall provides a <code>NextToken</code> value that you can
use in a subsequent call to get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Firewalls = list(
        list(
          FirewallName = "string",
          FirewallArn = "string"
        )
      )
    )

### Request syntax

    svc$list_firewalls(
      NextToken = "string",
      VpcIds = list(
        "string"
      ),
      MaxResults = 123
    )
