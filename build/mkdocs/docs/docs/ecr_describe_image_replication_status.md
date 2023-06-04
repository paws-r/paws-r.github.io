<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_image_replication_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the replication status for a specified image

### Description

Returns the replication status for a specified image.

### Usage

    ecr_describe_image_replication_status(repositoryName, imageId,
      registryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_describe_image_replication_status_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that the image is
in.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_image_replication_status_:_imageId">imageId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_describe_image_replication_status_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry.
If you do not specify a registry, the default registry is
assumed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      ),
      replicationStatuses = list(
        list(
          region = "string",
          registryId = "string",
          status = "IN_PROGRESS"|"COMPLETE"|"FAILED",
          failureCode = "string"
        )
      )
    )

### Request syntax

    svc$describe_image_replication_status(
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      ),
      registryId = "string"
    )
