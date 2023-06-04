<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_container_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a container recipe

### Description

Deletes a container recipe.

### Usage

    imagebuilder_delete_container_recipe(containerRecipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_container_recipe_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the container recipe
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      containerRecipeArn = "string"
    )

### Request syntax

    svc$delete_container_recipe(
      containerRecipeArn = "string"
    )
