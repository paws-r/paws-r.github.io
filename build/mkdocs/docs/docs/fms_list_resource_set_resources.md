<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_resource_set_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of resources that are currently associated to a resource set

### Description

Returns an array of resources that are currently associated to a
resource set.

### Usage

    fms_list_resource_set_resources(Identifier, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_resource_set_resources_:_Identifier">Identifier</code></td>
<td><p>[required] A unique identifier for the resource set, used in a
request to refer to the resource set.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_resource_set_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of objects that you want Firewall Manager to
return for this request. If more objects are available, in the response,
Firewall Manager provides a <code>NextToken</code> value that you can
use in a subsequent call to get the next batch of objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="fms_list_resource_set_resources_:_NextToken">NextToken</code></td>
<td><p>When you request a list of objects with a <code>MaxResults</code>
setting, if the number of objects that are still available for retrieval
exceeds the maximum you requested, Firewall Manager returns a
<code>NextToken</code> value in the response. To retrieve the next batch
of objects, use the token returned from the prior request in your next
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Items = list(
        list(
          URI = "string",
          AccountId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_set_resources(
      Identifier = "string",
      MaxResults = 123,
      NextToken = "string"
    )
