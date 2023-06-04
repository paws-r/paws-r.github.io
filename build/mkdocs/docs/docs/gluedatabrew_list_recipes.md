<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_list_recipes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the DataBrew recipes that are defined

### Description

Lists all of the DataBrew recipes that are defined.

### Usage

    gluedatabrew_list_recipes(MaxResults, NextToken, RecipeVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_list_recipes_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in this request.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_list_recipes_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_list_recipes_:_RecipeVersion">RecipeVersion</code></td>
<td><p>Return only those recipes with a version identifier of
<code>LATEST_WORKING</code> or <code>LATEST_PUBLISHED</code>. If
<code>RecipeVersion</code> is omitted, <code>list_recipes</code> returns
all of the <code>LATEST_PUBLISHED</code> recipe versions.</p>
<p>Valid values: <code>LATEST_WORKING</code> |
<code>LATEST_PUBLISHED</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Recipes = list(
        list(
          CreatedBy = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          ProjectName = "string",
          PublishedBy = "string",
          PublishedDate = as.POSIXct(
            "2015-01-01"
          ),
          Description = "string",
          Name = "string",
          ResourceArn = "string",
          Steps = list(
            list(
              Action = list(
                Operation = "string",
                Parameters = list(
                  "string"
                )
              ),
              ConditionExpressions = list(
                list(
                  Condition = "string",
                  Value = "string",
                  TargetColumn = "string"
                )
              )
            )
          ),
          Tags = list(
            "string"
          ),
          RecipeVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recipes(
      MaxResults = 123,
      NextToken = "string",
      RecipeVersion = "string"
    )
