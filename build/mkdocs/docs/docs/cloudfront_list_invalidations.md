<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_invalidations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists invalidation batches

### Description

Lists invalidation batches.

### Usage

    cloudfront_list_invalidations(DistributionId, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_invalidations_:_DistributionId">DistributionId</code></td>
<td><p>[required] The distribution's ID.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_list_invalidations_:_Marker">Marker</code></td>
<td><p>Use this parameter when paginating results to indicate where to
begin in your list of invalidation batches. Because the results are
returned in decreasing order from most recent to oldest, the most recent
results are on the first page, the second page will contain earlier
results, and so on. To get the next page of results, set
<code>Marker</code> to the value of the <code>NextMarker</code> from the
current page's response. This value is the same as the ID of the last
invalidation batch on that page.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_list_invalidations_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of invalidation batches that you want in the
response body.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InvalidationList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            CreateTime = as.POSIXct(
              "2015-01-01"
            ),
            Status = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_invalidations(
      DistributionId = "string",
      Marker = "string",
      MaxItems = "string"
    )
