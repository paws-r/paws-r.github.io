<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_image_recipes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of image recipes

### Description

Returns a list of image recipes.

### Usage

    imagebuilder_list_image_recipes(owner, filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="imagebuilder_list_image_recipes_:_owner">owner</code></td>
<td><p>The owner defines which image recipes you want to list. By
default, this request will only show image recipes owned by your
account. You can use this field to specify if you want to view image
recipes owned by yourself, by Amazon, or those image recipes that have
been shared with you by other customers.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_recipes_:_filters">filters</code></td>
<td><p>Use the following filters to streamline results:</p>
<ul>
<li><p><code>name</code></p></li>
<li><p><code>parentImage</code></p></li>
<li><p><code>platform</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_image_recipes_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_recipes_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageRecipeSummaryList = list(
        list(
          arn = "string",
          name = "string",
          platform = "Windows"|"Linux",
          owner = "string",
          parentImage = "string",
          dateCreated = "string",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_image_recipes(
      owner = "Self"|"Shared"|"Amazon"|"ThirdParty",
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
