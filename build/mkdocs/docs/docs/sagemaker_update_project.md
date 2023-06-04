<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a machine learning (ML) project that is created from a template that sets up an ML pipeline from training to deploying an approved model

### Description

Updates a machine learning (ML) project that is created from a template
that sets up an ML pipeline from training to deploying an approved
model.

You must not update a project that is in use. If you update the
`ServiceCatalogProvisioningUpdateDetails` of a project that is active or
being created, or updated, you may lose resources already created by the
project.

### Usage

    sagemaker_update_project(ProjectName, ProjectDescription,
      ServiceCatalogProvisioningUpdateDetails, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_project_:_ProjectName">ProjectName</code></td>
<td><p>[required] The name of the project.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_project_:_ProjectDescription">ProjectDescription</code></td>
<td><p>The description for the project.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_project_:_ServiceCatalogProvisioningUpdateDetails">ServiceCatalogProvisioningUpdateDetails</code></td>
<td><p>The product ID and provisioning artifact ID to provision a
service catalog. The provisioning artifact ID will default to the latest
provisioning artifact ID of the product, if you don't provide the
provisioning artifact ID. For more information, see <a
href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html">What
is Amazon Web Services Service Catalog</a>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_update_project_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>. In addition, the project must have
tag update constraints set in order to include this parameter in the
request. For more information, see <a
href="https://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints-resourceupdate.html">Amazon
Web Services Service Catalog Tag Update Constraints</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProjectArn = "string"
    )

### Request syntax

    svc$update_project(
      ProjectName = "string",
      ProjectDescription = "string",
      ServiceCatalogProvisioningUpdateDetails = list(
        ProvisioningArtifactId = "string",
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
