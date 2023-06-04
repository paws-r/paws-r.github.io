<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_create_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a repository in a public registry

### Description

Creates a repository in a public registry. For more information, see
[Amazon ECR
repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecrpublic_create_repository(repositoryName, catalogData, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_create_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name to use for the repository. This appears
publicly in the Amazon ECR Public Gallery. The repository name can be
specified on its own (for example <code>nginx-web-app</code>) or
prepended with a namespace to group the repository into a category (for
example <code>project-a/nginx-web-app</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_create_repository_:_catalogData">catalogData</code></td>
<td><p>The details about the repository that are publicly visible in the
Amazon ECR Public Gallery.</p></td>
</tr>
<tr class="odd">
<td><code id="ecrpublic_create_repository_:_tags">tags</code></td>
<td><p>The metadata that you apply to each repository to help categorize
and organize your repositories. Each tag consists of a key and an
optional value. You define both of them. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.</p></td>
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
      ),
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

    svc$create_repository(
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
      ),
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
