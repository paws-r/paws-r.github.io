<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_cloud_front_origin_access_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists origin access identities

### Description

Lists origin access identities.

### Usage

    cloudfront_list_cloud_front_origin_access_identities(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_cloud_front_origin_access_identities_:_Marker">Marker</code></td>
<td><p>Use this when paginating results to indicate where to begin in
your list of origin access identities. The results include identities in
the list that occur after the marker. To get the next page of results,
set the <code>Marker</code> to the value of the <code>NextMarker</code>
from the current page's response (which is also the ID of the last
identity on that page).</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_cloud_front_origin_access_identities_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of origin access identities you want in the
response body.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CloudFrontOriginAccessIdentityList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            S3CanonicalUserId = "string",
            Comment = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_cloud_front_origin_access_identities(
      Marker = "string",
      MaxItems = "string"
    )
