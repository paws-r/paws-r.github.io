<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_distribution_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of distribution configurations

### Description

Returns a list of distribution configurations.

### Usage

    imagebuilder_list_distribution_configurations(filters, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_distribution_configurations_:_filters">filters</code></td>
<td><p>You can filter on <code>name</code> to streamline
results.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_distribution_configurations_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_distribution_configurations_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      distributionConfigurationSummaryList = list(
        list(
          arn = "string",
          name = "string",
          description = "string",
          dateCreated = "string",
          dateUpdated = "string",
          tags = list(
            "string"
          ),
          regions = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_distribution_configurations(
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
