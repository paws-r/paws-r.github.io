<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_publish_recipe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes a new version of a DataBrew recipe

### Description

Publishes a new version of a DataBrew recipe.

### Usage

    gluedatabrew_publish_recipe(Description, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_publish_recipe_:_Description">Description</code></td>
<td><p>A description of the recipe to be published, for this version of
the recipe.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_publish_recipe_:_Name">Name</code></td>
<td><p>[required] The name of the recipe to be published.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$publish_recipe(
      Description = "string",
      Name = "string"
    )
