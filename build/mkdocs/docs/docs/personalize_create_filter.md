<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a recommendation filter

### Description

Creates a recommendation filter. For more information, see [Filtering
recommendations and user
segments](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).

### Usage

    personalize_create_filter(name, datasetGroupArn, filterExpression, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="personalize_create_filter_:_name">name</code></td>
<td><p>[required] The name of the filter to create.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_filter_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The ARN of the dataset group that the filter will
belong to.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_filter_:_filterExpression">filterExpression</code></td>
<td><p>[required] The filter expression defines which items are included
or excluded from recommendations. Filter expression must follow specific
format rules. For information about filter expression structure and
syntax, see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/filter-expressions.html">Filter
expressions</a>.</p></td>
</tr>
<tr class="even">
<td><code id="personalize_create_filter_:_tags">tags</code></td>
<td><p>A list of tags to apply to the filter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      filterArn = "string"
    )

### Request syntax

    svc$create_filter(
      name = "string",
      datasetGroupArn = "string",
      filterExpression = "string",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
