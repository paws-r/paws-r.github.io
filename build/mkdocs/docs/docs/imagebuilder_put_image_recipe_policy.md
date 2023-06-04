<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_put_image_recipe_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies a policy to an image recipe

### Description

Applies a policy to an image recipe. We recommend that you call the RAM
API
[CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
to share resources. If you call the Image Builder API
`put_image_recipe_policy`, you must also call the RAM API
[PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
in order for the resource to be visible to all principals with whom the
resource is shared.

### Usage

    imagebuilder_put_image_recipe_policy(imageRecipeArn, policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_put_image_recipe_policy_:_imageRecipeArn">imageRecipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the image recipe
that this policy should be applied to.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_put_image_recipe_policy_:_policy">policy</code></td>
<td><p>[required] The policy to apply.</p></td>
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

    svc$put_image_recipe_policy(
      imageRecipeArn = "string",
      policy = "string"
    )
