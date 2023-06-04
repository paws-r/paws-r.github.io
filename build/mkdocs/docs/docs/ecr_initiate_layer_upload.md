<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_initiate_layer_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Notifies Amazon ECR that you intend to upload an image layer

### Description

Notifies Amazon ECR that you intend to upload an image layer.

When an image is pushed, the InitiateLayerUpload API is called once per
image layer that has not already been uploaded. Whether or not an image
layer has been uploaded is determined by the BatchCheckLayerAvailability
API action.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecr_initiate_layer_upload(registryId, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_initiate_layer_upload_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
to which you intend to upload layers. If you do not specify a registry,
the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_initiate_layer_upload_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to which you intend to
upload layers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      uploadId = "string",
      partSize = 123
    )

### Request syntax

    svc$initiate_layer_upload(
      registryId = "string",
      repositoryName = "string"
    )
