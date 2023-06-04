<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_batch_get_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information for an image

### Description

Gets detailed information for an image. Images are specified with either
an `imageTag` or `imageDigest`.

When an image is pulled, the BatchGetImage API is called once to
retrieve the image manifest.

### Usage

    ecr_batch_get_image(registryId, repositoryName, imageIds,
      acceptedMediaTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_batch_get_image_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the images to describe. If you do not specify a registry,
the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_batch_get_image_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository that contains the images to
describe.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_batch_get_image_:_imageIds">imageIds</code></td>
<td><p>[required] A list of image ID references that correspond to
images to describe. The format of the <code>imageIds</code> reference is
<code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_batch_get_image_:_acceptedMediaTypes">acceptedMediaTypes</code></td>
<td><p>The accepted media types for the request.</p>
<p>Valid values:
<code>application/vnd.docker.distribution.manifest.v1+json</code> |
<code>application/vnd.docker.distribution.manifest.v2+json</code> |
<code>application/vnd.oci.image.manifest.v1+json</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      images = list(
        list(
          registryId = "string",
          repositoryName = "string",
          imageId = list(
            imageDigest = "string",
            imageTag = "string"
          ),
          imageManifest = "string",
          imageManifestMediaType = "string"
        )
      ),
      failures = list(
        list(
          imageId = list(
            imageDigest = "string",
            imageTag = "string"
          ),
          failureCode = "InvalidImageDigest"|"InvalidImageTag"|"ImageTagDoesNotMatchDigest"|"ImageNotFound"|"MissingDigestAndTag"|"ImageReferencedByManifestList"|"KmsError",
          failureReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_image(
      registryId = "string",
      repositoryName = "string",
      imageIds = list(
        list(
          imageDigest = "string",
          imageTag = "string"
        )
      ),
      acceptedMediaTypes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example obtains information for an image with a specified image
    # digest ID from the repository named ubuntu in the current account.
    svc$batch_get_image(
      imageIds = list(
        list(
          imageTag = "precise"
        )
      ),
      repositoryName = "ubuntu"
    )

    ## End(Not run)
