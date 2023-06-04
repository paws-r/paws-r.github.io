<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_update_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the definition of the LATEST\_WORKING version of a DataBrew recipe

### Description

Modifies the definition of the `LATEST_WORKING` version of a DataBrew
recipe.

### Usage

    gluedatabrew_update_recipe(Description, Name, Steps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_:_Description">Description</code></td>
<td><p>A description of the recipe.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_update_recipe_:_Name">Name</code></td>
<td><p>[required] The name of the recipe to be updated.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_update_recipe_:_Steps">Steps</code></td>
<td><p>One or more steps to be performed by the recipe. Each step
consists of an action, and the conditions under which the action should
succeed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_recipe(
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
      )
    )
