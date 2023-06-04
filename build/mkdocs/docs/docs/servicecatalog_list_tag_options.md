<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_tag_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the specified TagOptions or all TagOptions

### Description

Lists the specified TagOptions or all TagOptions.

### Usage

    servicecatalog_list_tag_options(Filters, PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_tag_options_:_Filters">Filters</code></td>
<td><p>The search filters. If no search filters are specified, the
output includes all TagOptions.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_tag_options_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_tag_options_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagOptionDetails = list(
        list(
          Key = "string",
          Value = "string",
          Active = TRUE|FALSE,
          Id = "string",
          Owner = "string"
        )
      ),
      PageToken = "string"
    )

### Request syntax

    svc$list_tag_options(
      Filters = list(
        Key = "string",
        Value = "string",
        Active = TRUE|FALSE
      ),
      PageSize = 123,
      PageToken = "string"
    )
