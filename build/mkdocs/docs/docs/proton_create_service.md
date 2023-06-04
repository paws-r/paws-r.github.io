<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an Proton service

### Description

Create an Proton service. An Proton service is an instantiation of a
service template and often includes several service instances and
pipeline. For more information, see
[Services](https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html)
in the *Proton User Guide*.

### Usage

    proton_create_service(branchName, description, name,
      repositoryConnectionArn, repositoryId, spec, tags, templateMajorVersion,
      templateMinorVersion, templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_create_service_:_branchName">branchName</code></td>
<td><p>The name of the code repository branch that holds the code that's
deployed in Proton. <em>Don't</em> include this parameter if your
service template <em>doesn't</em> include a service pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_:_description">description</code></td>
<td><p>A description of the Proton service.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_service_:_name">name</code></td>
<td><p>[required] The service name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_:_repositoryConnectionArn">repositoryConnectionArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the repository connection. For
more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol">Setting
up an AWS CodeStar connection</a> in the <em>Proton User Guide</em>.
<em>Don't</em> include this parameter if your service template
<em>doesn't</em> include a service pipeline.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_:_repositoryId">repositoryId</code></td>
<td><p>The ID of the code repository. <em>Don't</em> include this
parameter if your service template <em>doesn't</em> include a service
pipeline.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_service_:_spec">spec</code></td>
<td><p>[required] A link to a spec file that provides inputs as defined
in the service template bundle schema file. The spec file is in YAML
format. <em>Don’t</em> include pipeline inputs in the spec if your
service template <em>doesn’t</em> include a service pipeline. For more
information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-create-svc.html">Create
a service</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_service_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton service. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>[required] The major version of the service template that was
used to create the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_service_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>The minor version of the service template that was used to create
the service.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_service_:_templateName">templateName</code></td>
<td><p>[required] The name of the service template that's used to create
the service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      service = list(
        arn = "string",
        branchName = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        pipeline = list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
          deploymentStatusMessage = "string",
          lastDeploymentAttemptedAt = as.POSIXct(
            "2015-01-01"
          ),
          lastDeploymentSucceededAt = as.POSIXct(
            "2015-01-01"
          ),
          spec = "string",
          templateMajorVersion = "string",
          templateMinorVersion = "string",
          templateName = "string"
        ),
        repositoryConnectionArn = "string",
        repositoryId = "string",
        spec = "string",
        status = "CREATE_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_COMPLETE"|"CREATE_FAILED_CLEANUP_FAILED"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_COMPLETE"|"UPDATE_FAILED_CLEANUP_FAILED"|"UPDATE_FAILED"|"UPDATE_COMPLETE_CLEANUP_FAILED",
        statusMessage = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$create_service(
      branchName = "string",
      description = "string",
      name = "string",
      repositoryConnectionArn = "string",
      repositoryId = "string",
      spec = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      templateMajorVersion = "string",
      templateMinorVersion = "string",
      templateName = "string"
    )
