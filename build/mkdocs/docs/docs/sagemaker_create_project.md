<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a machine learning (ML) project that can contain one or more templates that set up an ML pipeline from training to deploying an approved model

### Description

Creates a machine learning (ML) project that can contain one or more
templates that set up an ML pipeline from training to deploying an
approved model.

### Usage

    sagemaker_create_project(ProjectName, ProjectDescription,
      ServiceCatalogProvisioningDetails, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_project_:_ProjectName">ProjectName</code></td>
<td><p>[required] The name of the project.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_project_:_ProjectDescription">ProjectDescription</code></td>
<td><p>A description for the project.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_project_:_ServiceCatalogProvisioningDetails">ServiceCatalogProvisioningDetails</code></td>
<td><p>[required] The product ID and provisioning artifact ID to
provision a service catalog. The provisioning artifact ID will default
to the latest provisioning artifact ID of the product, if you don't
provide the provisioning artifact ID. For more information, see <a
href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html">What
is Amazon Web Services Service Catalog</a>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_project_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs that you want to use to organize and
track your Amazon Web Services resource costs. For more information, see
<a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectArn = "string",
      ProjectId = "string"
    )

### Request syntax

    svc$create_project(
      ProjectName = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
