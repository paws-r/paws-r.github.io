<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a filter's properties

### Description

Describes a filter's properties.

### Usage

    personalize_describe_filter(filterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_filter_:_filterArn">filterArn</code></td>
<td><p>[required] The ARN of the filter to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      filter = list(
        name = "string",
        filterArn = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        datasetGroupArn = "string",
        failureReason = "string",
        filterExpression = "string",
        status = "string"
      )
    )

### Request syntax

    svc$describe_filter(
      filterArn = "string"
    )
