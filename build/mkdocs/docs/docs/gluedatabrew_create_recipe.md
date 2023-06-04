<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DataBrew recipe

### Description

Creates a new DataBrew recipe.

### Usage

    gluedatabrew_create_recipe(Description, Name, Steps, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_create_recipe_:_Description">Description</code></td>
<td><p>A description for the recipe.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_recipe_:_Name">Name</code></td>
<td><p>[required] A unique name for the recipe. Valid characters are
alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_create_recipe_:_Steps">Steps</code></td>
<td><p>[required] An array containing the steps to be performed by the
recipe. Each recipe step consists of one recipe action and (optionally)
an array of condition expressions.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_recipe_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to this recipe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_recipe(
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
      )
    )
