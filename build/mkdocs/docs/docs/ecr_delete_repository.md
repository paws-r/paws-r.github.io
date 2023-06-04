<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_delete_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a repository

### Description

Deletes a repository. If the repository contains images, you must either
delete all images in the repository or use the `force` option to delete
the repository.

### Usage

    ecr_delete_repository(registryId, repositoryName, force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_delete_repository_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository to delete. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_delete_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_delete_repository_:_force">force</code></td>
<td><p>If a repository contains images, forces the deletion.</p></td>
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
        ),
        imageTagMutability = "MUTABLE"|"IMMUTABLE",
        imageScanningConfiguration = list(
          scanOnPush = TRUE|FALSE
        ),
        encryptionConfiguration = list(
          encryptionType = "AES256"|"KMS",
          kmsKey = "string"
        )
      )
    )

### Request syntax

    svc$delete_repository(
      registryId = "string",
      repositoryName = "string",
      force = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example force deletes a repository named ubuntu in the default
    # registry for an account. The force parameter is required if the
    # repository contains images.
    svc$delete_repository(
      force = TRUE,
      repositoryName = "ubuntu"
    )

    ## End(Not run)
