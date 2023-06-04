<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_get_repository_catalog_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve catalog metadata for a repository in a public registry

### Description

Retrieve catalog metadata for a repository in a public registry. This
metadata is displayed publicly in the Amazon ECR Public Gallery.

### Usage

    ecrpublic_get_repository_catalog_data(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_get_repository_catalog_data_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
registry that contains the repositories to be described. If you do not
specify a registry, the default public registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_get_repository_catalog_data_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to retrieve the catalog
metadata for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      catalogData = list(
        description = "string",
        architectures = list(
          "string"
        ),
        operatingSystems = list(
          "string"
        ),
        logoUrl = "string",
        aboutText = "string",
        usageText = "string",
        marketplaceCertified = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_repository_catalog_data(
      registryId = "string",
      repositoryName = "string"
    )
