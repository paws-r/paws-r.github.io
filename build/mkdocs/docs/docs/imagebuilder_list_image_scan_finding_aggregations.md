<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_image_scan_finding_aggregations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of image scan aggregations for your account

### Description

Returns a list of image scan aggregations for your account. You can
filter by the type of key that Image Builder uses to group results. For
example, if you want to get a list of findings by severity level for one
of your pipelines, you might specify your pipeline with the
`imagePipelineArn` filter. If you don't specify a filter, Image Builder
returns an aggregation for your account.

To streamline results, you can use the following filters in your
request:

-   `accountId`

-   `imageBuildVersionArn`

-   `imagePipelineArn`

-   `vulnerabilityId`

### Usage

    imagebuilder_list_image_scan_finding_aggregations(filter, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_image_scan_finding_aggregations_:_filter">filter</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_scan_finding_aggregations_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      aggregationType = "string",
      responses = list(
        list(
          accountAggregation = list(
            accountId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          imageAggregation = list(
            imageBuildVersionArn = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          imagePipelineAggregation = list(
            imagePipelineArn = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          vulnerabilityIdAggregation = list(
            vulnerabilityId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_image_scan_finding_aggregations(
      filter = list(
        name = "string",
        values = list(
          "string"
        )
      ),
      nextToken = "string"
    )
