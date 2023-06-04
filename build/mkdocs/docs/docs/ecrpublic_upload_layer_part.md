<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecrpublic_upload_layer_part</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads an image layer part to Amazon ECR

### Description

Uploads an image layer part to Amazon ECR.

When an image is pushed, each new image layer is uploaded in parts. The
maximum size of each image layer part can be 20971520 bytes (about
20MB). The UploadLayerPart API is called once for each new image layer
part.

This operation is used by the Amazon ECR proxy and is not generally used
by customers for pulling and pushing images. In most cases, you should
use the `docker` CLI to pull, tag, and push images.

### Usage

    ecrpublic_upload_layer_part(registryId, repositoryName, uploadId,
      partFirstByte, partLastByte, layerPartBlob)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecrpublic_upload_layer_part_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID, or registry alias, that's
associated with the registry that you're uploading layer parts to. If
you do not specify a registry, the default public registry is
assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_upload_layer_part_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that you're uploading layer
parts to.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_upload_layer_part_:_uploadId">uploadId</code></td>
<td><p>[required] The upload ID from a previous
<code>initiate_layer_upload</code> operation to associate with the layer
part upload.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_upload_layer_part_:_partFirstByte">partFirstByte</code></td>
<td><p>[required] The position of the first byte of the layer part witin
the overall image layer.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecrpublic_upload_layer_part_:_partLastByte">partLastByte</code></td>
<td><p>[required] The position of the last byte of the layer part within
the overall image layer.</p></td>
</tr>
<tr class="even">
<td><code
id="ecrpublic_upload_layer_part_:_layerPartBlob">layerPartBlob</code></td>
<td><p>[required] The base64-encoded layer part payload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      uploadId = "string",
      lastByteReceived = 123
    )

### Request syntax

    svc$upload_layer_part(
      registryId = "string",
      repositoryName = "string",
      uploadId = "string",
      partFirstByte = 123,
      partLastByte = 123,
      layerPartBlob = raw
    )
