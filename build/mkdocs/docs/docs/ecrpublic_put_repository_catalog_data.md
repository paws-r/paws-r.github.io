<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_put_repository_catalog_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the catalog data for a repository in a public registry

### Description

Creates or updates the catalog data for a repository in a public
registry.

### Usage

    ecrpublic_put_repository_catalog_data(registryId, repositoryName,
      catalogData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_put_repository_catalog_data_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID that's associated with the
public registry the repository is in. If you do not specify a registry,
the default public registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_put_repository_catalog_data_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to create or update the
catalog data for.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_put_repository_catalog_data_:_catalogData">catalogData</code></td>
<td><p>[required] An object containing the catalog data for a
repository. This data is publicly visible in the Amazon ECR Public
Gallery.</p></td>
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

    svc$put_repository_catalog_data(
      registryId = "string",
      repositoryName = "string",
      catalogData = list(
        description = "string",
        architectures = list(
          "string"
        ),
        operatingSystems = list(
          "string"
        ),
        logoImageBlob = raw,
        aboutText = "string",
        usageText = "string"
      )
    )
