<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_create_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a repository

### Description

Creates a repository. For more information, see [Amazon ECR
repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_create_repository(registryId, repositoryName, tags,
      imageTagMutability, imageScanningConfiguration, encryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_create_repository_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
to create the repository. If you do not specify a registry, the default
registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_create_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name to use for the repository. The repository
name may be specified on its own (such as <code>nginx-web-app</code>) or
it can be prepended with a namespace to group the repository into a
category (such as <code>project-a/nginx-web-app</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_create_repository_:_tags">tags</code></td>
<td><p>The metadata that you apply to the repository to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define. Tag keys can have a maximum character
length of 128 characters, and tag values can have a maximum length of
256 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_create_repository_:_imageTagMutability">imageTagMutability</code></td>
<td><p>The tag mutability setting for the repository. If this parameter
is omitted, the default setting of <code>MUTABLE</code> will be used
which will allow image tags to be overwritten. If <code>IMMUTABLE</code>
is specified, all image tags within the repository will be immutable
which will prevent them from being overwritten.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_create_repository_:_imageScanningConfiguration">imageScanningConfiguration</code></td>
<td><p>The image scanning configuration for the repository. This
determines whether images are scanned for known vulnerabilities after
being pushed to the repository.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_create_repository_:_encryptionConfiguration">encryptionConfiguration</code></td>
<td><p>The encryption configuration for the repository. This determines
how the contents of your repository are encrypted at rest.</p></td>
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

    svc$create_repository(
      registryId = "string",
      repositoryName = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
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

### Examples

    ## Not run: 
    # This example creates a repository called nginx-web-app inside the
    # project-a namespace in the default registry for an account.
    svc$create_repository(
      repositoryName = "project-a/nginx-web-app"
    )

    ## End(Not run)
