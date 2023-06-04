<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_put_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the image manifest and tags that are associated with an image

### Description

Creates or updates the image manifest and tags that are associated with
an image.

When an image is pushed and all new image layers have been uploaded, the
PutImage API is called once to create or update the image manifest and
the tags that are associated with the image.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecrpublic_put_image(registryId, repositoryName, imageManifest,
      imageManifestMediaType, imageTag, imageDigest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecrpublic_put_image_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID, or registry alias, that's
associated with the public registry that contains the repository where
the image is put. If you do not specify a registry, the default public
registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_put_image_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where the image is
put.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_put_image_:_imageManifest">imageManifest</code></td>
<td><p>[required] The image manifest that corresponds to the image to be
uploaded.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_put_image_:_imageManifestMediaType">imageManifestMediaType</code></td>
<td><p>The media type of the image manifest. If you push an image
manifest that doesn't contain the <code>mediaType</code> field, you must
specify the <code>imageManifestMediaType</code> in the request.</p></td>
</tr>
<tr class="odd">
<td><code id="ecrpublic_put_image_:_imageTag">imageTag</code></td>
<td><p>The tag to associate with the image. This parameter is required
for images that use the Docker Image Manifest V2 Schema 2 or Open
Container Initiative (OCI) formats.</p></td>
</tr>
<tr class="even">
<td><code id="ecrpublic_put_image_:_imageDigest">imageDigest</code></td>
<td><p>The image digest of the image manifest that corresponds to the
image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      image = list(
        registryId = "string",
        repositoryName = "string",
        imageId = list(
          imageDigest = "string",
          imageTag = "string"
        ),
        imageManifest = "string",
        imageManifestMediaType = "string"
      )
    )

### Request syntax

    svc$put_image(
      registryId = "string",
      repositoryName = "string",
      imageManifest = "string",
      imageManifestMediaType = "string",
      imageTag = "string",
      imageDigest = "string"
    )
