<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the definition of a specific DataBrew recipe corresponding to a particular version

### Description

Returns the definition of a specific DataBrew recipe corresponding to a
particular version.

### Usage

    gluedatabrew_describe_recipe(Name, RecipeVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_recipe_:_Name">Name</code></td>
<td><p>[required] The name of the recipe to be described.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_describe_recipe_:_RecipeVersion">RecipeVersion</code></td>
<td><p>The recipe version identifier. If this parameter isn't specified,
then the latest published version is returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ResourceArn = "string",
      RecipeVersion = "string"
    )

### Request syntax

    svc$describe_recipe(
      Name = "string",
      RecipeVersion = "string"
    )
