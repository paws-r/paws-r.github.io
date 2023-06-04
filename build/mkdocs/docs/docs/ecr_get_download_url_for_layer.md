<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_download_url_for_layer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer

### Description

Retrieves the pre-signed Amazon S3 download URL corresponding to an
image layer. You can only get URLs for image layers that are referenced
in an image.

When an image is pulled, the GetDownloadUrlForLayer API is called once
per image layer that is not already cached.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecr_get_download_url_for_layer(registryId, repositoryName, layerDigest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_get_download_url_for_layer_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the image layer to download. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_get_download_url_for_layer_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that is associated with the
image layer to download.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_get_download_url_for_layer_:_layerDigest">layerDigest</code></td>
<td><p>[required] The digest of the image layer to download.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      downloadUrl = "string",
      layerDigest = "string"
    )

### Request syntax

    svc$get_download_url_for_layer(
      registryId = "string",
      repositoryName = "string",
      layerDigest = "string"
    )
