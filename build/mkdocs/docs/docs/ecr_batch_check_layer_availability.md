<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_batch_check_layer_availability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks the availability of one or more image layers in a repository

### Description

Checks the availability of one or more image layers in a repository.

When an image is pushed to a repository, each image layer is checked to
verify if it has been uploaded before. If it has been uploaded, then the
image layer is skipped.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecr_batch_check_layer_availability(registryId, repositoryName,
      layerDigests)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_batch_check_layer_availability_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the image layers to check. If you do not specify a
registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_batch_check_layer_availability_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that is associated with the
image layers to check.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_batch_check_layer_availability_:_layerDigests">layerDigests</code></td>
<td><p>[required] The digests of the image layers to check.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      layers = list(
        list(
          layerDigest = "string",
          layerAvailability = "AVAILABLE"|"UNAVAILABLE",
          layerSize = 123,
          mediaType = "string"
        )
      ),
      failures = list(
        list(
          layerDigest = "string",
          failureCode = "InvalidLayerDigest"|"MissingLayerDigest",
          failureReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_check_layer_availability(
      registryId = "string",
      repositoryName = "string",
      layerDigests = list(
        "string"
      )
    )
