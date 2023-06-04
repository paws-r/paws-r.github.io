<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_delete_recipe_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single version of a DataBrew recipe

### Description

Deletes a single version of a DataBrew recipe.

### Usage

    gluedatabrew_delete_recipe_version(Name, RecipeVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_delete_recipe_version_:_Name">Name</code></td>
<td><p>[required] The name of the recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_delete_recipe_version_:_RecipeVersion">RecipeVersion</code></td>
<td><p>[required] The version of the recipe to be deleted. You can
specify a numeric versions (<code>X.Y</code>) or
<code>LATEST_WORKING</code>. <code>LATEST_PUBLISHED</code> is not
supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      RecipeVersion = "string"
    )

### Request syntax

    svc$delete_recipe_version(
      Name = "string",
      RecipeVersion = "string"
    )
