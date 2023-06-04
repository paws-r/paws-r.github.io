<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_start_image_scan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an image vulnerability scan

### Description

Starts an image vulnerability scan. An image scan can only be started
once per 24 hours on an individual image. This limit includes if an
image was scanned on initial push. For more information, see [Image
scanning](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_start_image_scan(registryId, repositoryName, imageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecr_start_image_scan_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository in which to start an image scan request. If
you do not specify a registry, the default registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_start_image_scan_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the images to
scan.</p></td>
</tr>
<tr class="odd">
<td><code id="ecr_start_image_scan_:_imageId">imageId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      ),
      imageScanStatus = list(
        status = "IN_PROGRESS"|"COMPLETE"|"FAILED"|"UNSUPPORTED_IMAGE"|"ACTIVE"|"PENDING"|"SCAN_ELIGIBILITY_EXPIRED"|"FINDINGS_UNAVAILABLE",
        description = "string"
      )
    )

### Request syntax

    svc$start_image_scan(
      registryId = "string",
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      )
    )
