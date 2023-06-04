<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_origin_access_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the list of CloudFront origin access controls in this Amazon Web Services account

### Description

Gets the list of CloudFront origin access controls in this Amazon Web
Services account.

You can optionally specify the maximum number of items to receive in the
response. If the total number of items in the list exceeds the maximum
that you specify, or the default maximum, the response is paginated. To
get the next page of items, send another request that specifies the
`NextMarker` value from the current response as the `Marker` value in
the next request.

### Usage

    cloudfront_list_origin_access_controls(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_origin_access_controls_:_Marker">Marker</code></td>
<td><p>Use this field when paginating results to indicate where to begin
in your list of origin access controls. The response includes the items
in the list that occur after the marker. To get the next page of the
list, set this field's value to the value of <code>NextMarker</code>
from the current page's response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_origin_access_controls_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of origin access controls that you want in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginAccessControlList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            Description = "string",
            Name = "string",
            SigningProtocol = "sigv4",
            SigningBehavior = "never"|"always"|"no-override",
            OriginAccessControlOriginType = "s3"|"mediastore"
          )
        )
      )
    )

### Request syntax

    svc$list_origin_access_controls(
      Marker = "string",
      MaxItems = "string"
    )
