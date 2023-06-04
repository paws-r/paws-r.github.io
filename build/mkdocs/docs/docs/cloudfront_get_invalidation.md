<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_invalidation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the information about an invalidation

### Description

Get the information about an invalidation.

### Usage

    cloudfront_get_invalidation(DistributionId, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_invalidation_:_DistributionId">DistributionId</code></td>
<td><p>[required] The distribution's ID.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_get_invalidation_:_Id">Id</code></td>
<td><p>[required] The identifier for the invalidation request, for
example, <code>IDFDVBD632BHDS5</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

    svc$get_invalidation(
      DistributionId = "string",
      Id = "string"
    )
