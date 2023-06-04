<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_get_container_recipe_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the policy for a container recipe

### Description

Retrieves the policy for a container recipe.

### Usage

    imagebuilder_get_container_recipe_policy(containerRecipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_get_container_recipe_policy_:_containerRecipeArn">containerRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the container recipe
for the policy being requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      policy = "string"
    )

### Request syntax

    svc$get_container_recipe_policy(
      containerRecipeArn = "string"
    )
