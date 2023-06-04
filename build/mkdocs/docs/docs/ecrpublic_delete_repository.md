<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_delete_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a repository in a public registry

### Description

Deletes a repository in a public registry. If the repository contains
images, you must either manually delete all images in the repository or
use the `force` option. This option deletes all images on your behalf
before deleting the repository.

### Usage

    ecrpublic_delete_repository(registryId, repositoryName, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_delete_repository_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
public registry that contains the repository to delete. If you do not
specify a registry, the default public registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_delete_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="ecrpublic_delete_repository_:_force">force</code></td>
<td><p>The force option can be used to delete a repository that contains
images. If the force option is not used, the repository must be empty
prior to deletion.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repository = list(
        repositoryArn = "string",
        registryId = "string",
        repositoryName = "string",
        repositoryUri = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_repository(
      registryId = "string",
      repositoryName = "string",
      force = TRUE|FALSE
    )
