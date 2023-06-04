<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_invalidation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new invalidation

### Description

Create a new invalidation.

### Usage

    cloudfront_create_invalidation(DistributionId, InvalidationBatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_invalidation_:_DistributionId">DistributionId</code></td>
<td><p>[required] The distribution's id.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_create_invalidation_:_InvalidationBatch">InvalidationBatch</code></td>
<td><p>[required] The batch information for the invalidation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Location = "string",
      Invalidation = list(
        Id = "string",
        Status = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        InvalidationBatch = list(
          Paths = list(
            Quantity = 123,
            Items = list(
              "string"
            )
          ),
          CallerReference = "string"
        )
      )
    )

### Request syntax

    svc$create_invalidation(
      DistributionId = "string",
      InvalidationBatch = list(
        Paths = list(
          Quantity = 123,
          Items = list(
            "string"
          )
        ),
        CallerReference = "string"
      )
    )
