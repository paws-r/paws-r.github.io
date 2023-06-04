<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_delete_image_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an image recipe

### Description

Deletes an image recipe.

### Usage

    imagebuilder_delete_image_recipe(imageRecipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_delete_image_recipe_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image recipe to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      imageRecipeArn = "string"
    )

### Request syntax

    svc$delete_image_recipe(
      imageRecipeArn = "string"
    )
