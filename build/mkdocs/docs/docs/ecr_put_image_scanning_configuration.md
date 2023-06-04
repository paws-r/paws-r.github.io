<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_put_image_scanning_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The PutImageScanningConfiguration API is being deprecated, in favor of specifying the image scanning configuration at the registry level

### Description

The `put_image_scanning_configuration` API is being deprecated, in favor
of specifying the image scanning configuration at the registry level.
For more information, see `put_registry_scanning_configuration`.

Updates the image scanning configuration for the specified repository.

### Usage

    ecr_put_image_scanning_configuration(registryId, repositoryName,
      imageScanningConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_put_image_scanning_configuration_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository in which to update the image scanning
configuration setting. If you do not specify a registry, the default
registry is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_put_image_scanning_configuration_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository in which to update the
image scanning configuration setting.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_put_image_scanning_configuration_:_imageScanningConfiguration">imageScanningConfiguration</code></td>
<td><p>[required] The image scanning configuration for the repository.
This setting determines whether images are scanned for known
vulnerabilities after being pushed to the repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      imageScanningConfiguration = list(
        scanOnPush = TRUE|FALSE
      )
    )

### Request syntax

    svc$put_image_scanning_configuration(
      registryId = "string",
      repositoryName = "string",
      imageScanningConfiguration = list(
        scanOnPush = TRUE|FALSE
      )
    )
