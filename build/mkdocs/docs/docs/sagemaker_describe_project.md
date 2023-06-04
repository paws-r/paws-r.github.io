<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the details of a project

### Description

Describes the details of a project.

### Usage

    sagemaker_describe_project(ProjectName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_project_:_ProjectName">ProjectName</code></td>
<td><p>[required] The name of the project to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectArn = "string",
      ProjectName = "string",
      ProjectId = "string",
      ProjectDescription = "string",
      ServiceCatalogProvisioningDetails = list(
        ProductId = "string",
        ProvisioningArtifactId = "string",
        PathId = "string",
        ProvisioningParameters = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ServiceCatalogProvisionedProductDetails = list(
        ProvisionedProductId = "string",
        ProvisionedProductStatusMessage = "string"
      ),
      ProjectStatus = "Pending"|"CreateInProgress"|"CreateCompleted"|"CreateFailed"|"DeleteInProgress"|"DeleteFailed"|"DeleteCompleted"|"UpdateInProgress"|"UpdateCompleted"|"UpdateFailed",
      CreatedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedBy = list(
        UserProfileArn = "string",
        UserProfileName = "string",
        DomainId = "string",
        IamIdentity = list(
          Arn = "string",
          PrincipalId = "string",
          SourceIdentity = "string"
        )
      )
    )

### Request syntax

    svc$describe_project(
      ProjectName = "string"
    )
