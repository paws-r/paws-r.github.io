<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_streaming_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a streaming distribution

### Description

Update a streaming distribution.

### Usage

    cloudfront_update_streaming_distribution(StreamingDistributionConfig,
      Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_streaming_distribution_:_StreamingDistributionConfig">StreamingDistributionConfig</code></td>
<td><p>[required] The streaming distribution's configuration
information.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_streaming_distribution_:_Id">Id</code></td>
<td><p>[required] The streaming distribution's id.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_streaming_distribution_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the streaming distribution's configuration. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamingDistribution = list(
        Id = "string",
        ARN = "string",
        Status = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        DomainName = "string",
        ActiveTrustedSigners = list(
          Enabled = TRUE|FALSE,
          Quantity = 123,
          Items = list(
            list(
              AwsAccountNumber = "string",
              KeyPairIds = list(
                Quantity = 123,
                Items = list(
                  "string"
                )
              )
            )
          )
        ),
        StreamingDistributionConfig = list(
          CallerReference = "string",
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
          Comment = "string",
          Logging = list(
            Enabled = TRUE|FALSE,
            Bucket = "string",
            Prefix = "string"
          ),
          TrustedSigners = list(
            Enabled = TRUE|FALSE,
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
          Enabled = TRUE|FALSE
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$update_streaming_distribution(
      StreamingDistributionConfig = list(
        CallerReference = "string",
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
        Comment = "string",
        Logging = list(
          Enabled = TRUE|FALSE,
          Bucket = "string",
          Prefix = "string"
        ),
        TrustedSigners = list(
          Enabled = TRUE|FALSE,
          Quantity = 123,
          Items = list(
            "string"
          )
        ),
        PriceClass = "PriceClass_100"|"PriceClass_200"|"PriceClass_All",
        Enabled = TRUE|FALSE
      ),
      Id = "string",
      IfMatch = "string"
    )
