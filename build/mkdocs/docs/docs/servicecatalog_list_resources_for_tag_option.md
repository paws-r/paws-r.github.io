<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_resources_for_tag_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resources associated with the specified TagOption

### Description

Lists the resources associated with the specified TagOption.

### Usage

    servicecatalog_list_resources_for_tag_option(TagOptionId, ResourceType,
      PageSize, PageToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_resources_for_tag_option_:_TagOptionId">TagOptionId</code></td>
<td><p>[required] The TagOption identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_resources_for_tag_option_:_ResourceType">ResourceType</code></td>
<td><p>The resource type.</p>
<ul>
<li><p><code>Portfolio</code></p></li>
<li><p><code>Product</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_resources_for_tag_option_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_resources_for_tag_option_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceDetails = list(
        list(
          Id = "string",
          ARN = "string",
          Name = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      PageToken = "string"
    )

### Request syntax

    svc$list_resources_for_tag_option(
      TagOptionId = "string",
      ResourceType = "string",
      PageSize = 123,
      PageToken = "string"
    )
