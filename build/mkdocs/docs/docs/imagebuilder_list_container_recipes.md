<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_container_recipes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of container recipes

### Description

Returns a list of container recipes.

### Usage

    imagebuilder_list_container_recipes(owner, filters, maxResults,
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
id="imagebuilder_list_container_recipes_:_owner">owner</code></td>
<td><p>Returns container recipes belonging to the specified owner, that
have been shared with you. You can omit this field to return container
recipes belonging to your account.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_container_recipes_:_filters">filters</code></td>
<td><p>Use the following filters to streamline results:</p>
<ul>
<li><p><code>containerType</code></p></li>
<li><p><code>name</code></p></li>
<li><p><code>parentImage</code></p></li>
<li><p><code>platform</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_container_recipes_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_container_recipes_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      containerRecipeSummaryList = list(
        list(
          arn = "string",
          containerType = "DOCKER",
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

    svc$list_container_recipes(
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
