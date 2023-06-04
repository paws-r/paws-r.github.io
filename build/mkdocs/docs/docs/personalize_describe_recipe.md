<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a recipe

### Description

Describes a recipe.

A recipe contains three items:

-   An algorithm that trains a model.

-   Hyperparameters that govern the training.

-   Feature transformation information for modifying the input data
    before training.

Amazon Personalize provides a set of predefined recipes. You specify a
recipe when you create a solution with the `create_solution` API.
`create_solution` trains a model by using the algorithm in the specified
recipe and a training dataset. The solution, when deployed as a
campaign, can provide recommendations using the
[GetRecommendations](https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html)
API.

### Usage

    personalize_describe_recipe(recipeArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_recipe_:_recipeArn">recipeArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the recipe to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recipe = list(
        name = "string",
        recipeArn = "string",
        algorithmArn = "string",
        featureTransformationArn = "string",
        status = "string",
        description = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        recipeType = "string",
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_recipe(
      recipeArn = "string"
    )
