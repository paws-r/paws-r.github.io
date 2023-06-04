<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_list_recipe_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the versions of a particular DataBrew recipe, except for LATEST\_WORKING

### Description

Lists the versions of a particular DataBrew recipe, except for
`LATEST_WORKING`.

### Usage

    gluedatabrew_list_recipe_versions(MaxResults, NextToken, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_list_recipe_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in this request.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_list_recipe_versions_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_list_recipe_versions_:_Name">Name</code></td>
<td><p>[required] The name of the recipe for which to return version
information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
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
      )
    )

### Request syntax

    svc$list_recipe_versions(
      MaxResults = 123,
      NextToken = "string",
      Name = "string"
    )
