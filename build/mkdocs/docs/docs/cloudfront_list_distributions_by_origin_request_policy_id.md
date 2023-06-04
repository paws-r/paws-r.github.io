<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_distributions_by_origin_request_policy_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of distribution IDs for distributions that have a cache behavior that's associated with the specified origin request policy

### Description

Gets a list of distribution IDs for distributions that have a cache
behavior that's associated with the specified origin request policy.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send a subsequent request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the subsequent request.

### Usage

    cloudfront_list_distributions_by_origin_request_policy_id(Marker,
      MaxItems, OriginRequestPolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_distributions_by_origin_request_policy_id_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of distribution IDs. The response includes distribution IDs
in the list that occur after the marker. To get the next page of the
list, set this field's value to the value of <code>NextMarker</code>
from the current page's response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_distributions_by_origin_request_policy_id_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of distribution IDs that you want in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_distributions_by_origin_request_policy_id_:_OriginRequestPolicyId">OriginRequestPolicyId</code></td>
<td><p>[required] The ID of the origin request policy whose associated
distribution IDs you want to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DistributionIdList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          "string"
        )
      )
    )

### Request syntax

    svc$list_distributions_by_origin_request_policy_id(
      Marker = "string",
      MaxItems = "string",
      OriginRequestPolicyId = "string"
    )
