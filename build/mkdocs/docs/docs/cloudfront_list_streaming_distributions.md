<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_list_streaming_distributions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List streaming distributions

### Description

List streaming distributions.

### Usage

    cloudfront_list_streaming_distributions(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_list_streaming_distributions_:_Marker">Marker</code></td>
<td><p>The value that you provided for the <code>Marker</code> request
parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_list_streaming_distributions_:_MaxItems">MaxItems</code></td>
<td><p>The value that you provided for the <code>MaxItems</code> request
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamingDistributionList = list(
        Marker = "string",
        NextMarker = "string",
        MaxItems = 123,
        IsTruncated = TRUE|FALSE,
        Quantity = 123,
        Items = list(
          list(
            Id = "string",
            ARN = "string",
            Status = "string",
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            DomainName = "string",
            S3Origin = list(
              DomainName = "string",
              OriginAccessIdentity = "string"
            ),
            Aliases = list(
              Quantity = 123,
              Items = list(
                "string"
              )
            ),
            TrustedSigners = list(
              Enabled = TRUE|FALSE,
              Quantity = 123,
              Items = list(
                "string"
              )
            ),
            Comment = "string",
            PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
            Enabled = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$list_streaming_distributions(
      Marker = "string",
      MaxItems = "string"
    )
