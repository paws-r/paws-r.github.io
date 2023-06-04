<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_image_tag_mutability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the image tag mutability settings for the specified repository

### Description

Updates the image tag mutability settings for the specified repository.
For more information, see [Image tag
mutability](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_put_image_tag_mutability(registryId, repositoryName,
      imageTagMutability)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_put_image_tag_mutability_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository in which to update the image tag mutability
settings. If you do not specify a registry, the default registry is
assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_put_image_tag_mutability_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository in which to update the
image tag mutability settings.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_put_image_tag_mutability_:_imageTagMutability">imageTagMutability</code></td>
<td><p>[required] The tag mutability setting for the repository. If
<code>MUTABLE</code> is specified, image tags can be overwritten. If
<code>IMMUTABLE</code> is specified, all image tags within the
repository will be immutable which will prevent them from being
overwritten.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      imageTagMutability = "MUTABLE"|"IMMUTABLE"
    )

### Request syntax

    svc$put_image_tag_mutability(
      registryId = "string",
      repositoryName = "string",
      imageTagMutability = "MUTABLE"|"IMMUTABLE"
    )
