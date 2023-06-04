<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_recipes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of available recipes

### Description

Returns a list of available recipes. The response provides the
properties for each recipe, including the recipe's Amazon Resource Name
(ARN).

### Usage

    personalize_list_recipes(recipeProvider, nextToken, maxResults, domain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_recipes_:_recipeProvider">recipeProvider</code></td>
<td><p>The default is <code>SERVICE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_recipes_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_recipes</code> for getting the next set of recipes (if they
exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_recipes_:_maxResults">maxResults</code></td>
<td><p>The maximum number of recipes to return.</p></td>
</tr>
<tr class="even">
<td><code id="personalize_list_recipes_:_domain">domain</code></td>
<td><p>Filters returned recipes by domain for a Domain dataset group.
Only recipes (Domain dataset group use cases) for this domain are
included in the response. If you don't specify a domain, all recipes are
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recipes = list(
        list(
          name = "string",
          recipeArn = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_recipes(
      recipeProvider = "SERVICE",
      nextToken = "string",
      maxResults = 123,
      domain = "ECOMMERCE"|"VIDEO_ON_DEMAND"
    )
