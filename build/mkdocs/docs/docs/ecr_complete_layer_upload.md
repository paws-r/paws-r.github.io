<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_complete_layer_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID

### Description

Informs Amazon ECR that the image layer upload has completed for a
specified registry, repository name, and upload ID. You can optionally
provide a `sha256` digest of the image layer for data validation
purposes.

When an image is pushed, the CompleteLayerUpload API is called once per
each new image layer to verify that the upload has completed.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecr_complete_layer_upload(registryId, repositoryName, uploadId,
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
id="ecr_complete_layer_upload_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
to which to upload layers. If you do not specify a registry, the default
registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_complete_layer_upload_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to associate with the image
layer.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_complete_layer_upload_:_uploadId">uploadId</code></td>
<td><p>[required] The upload ID from a previous
<code>initiate_layer_upload</code> operation to associate with the image
layer.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_complete_layer_upload_:_layerDigests">layerDigests</code></td>
<td><p>[required] The <code>sha256</code> digest of the image
layer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      uploadId = "string",
      layerDigest = "string"
    )

### Request syntax

    svc$complete_layer_upload(
      registryId = "string",
      repositoryName = "string",
      uploadId = "string",
      layerDigests = list(
        "string"
      )
    )
