<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_batch_delete_recipe_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes one or more versions of a recipe at a time

### Description

Deletes one or more versions of a recipe at a time.

The entire request will be rejected if:

-   The recipe does not exist.

-   There is an invalid version identifier in the list of versions.

-   The version list is empty.

-   The version list size exceeds 50.

-   The version list contains duplicate entries.

The request will complete successfully, but with partial failures, if:

-   A version does not exist.

-   A version is being used by a job.

-   You specify `LATEST_WORKING`, but it's being used by a project.

-   The version fails to be deleted.

The `LATEST_WORKING` version will only be deleted if the recipe has no
other versions. If you try to delete `LATEST_WORKING` while other
versions exist (or if they can't be deleted), then `LATEST_WORKING` will
be listed as partial failure in the response.

### Usage

    gluedatabrew_batch_delete_recipe_version(Name, RecipeVersions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_batch_delete_recipe_version_:_Name">Name</code></td>
<td><p>[required] The name of the recipe whose versions are to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_batch_delete_recipe_version_:_RecipeVersions">RecipeVersions</code></td>
<td><p>[required] An array of version identifiers, for the recipe
versions to be deleted. You can specify numeric versions
(<code>X.Y</code>) or <code>LATEST_WORKING</code>.
<code>LATEST_PUBLISHED</code> is not supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Errors = list(
        list(
          ErrorCode = "string",
          ErrorMessage = "string",
          RecipeVersion = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_recipe_version(
      Name = "string",
      RecipeVersions = list(
        "string"
      )
    )
