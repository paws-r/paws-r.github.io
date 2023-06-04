<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service_pipeline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the service pipeline

### Description

Update the service pipeline.

There are four modes for updating a service pipeline. The
`deploymentType` field defines the mode.

#### 

`NONE`

In this mode, a deployment *doesn't* occur. Only the requested metadata
parameters are updated.

#### 

`CURRENT_VERSION`

In this mode, the service pipeline is deployed and updated with the new
spec that you provide. Only requested parameters are updated. *Don’t*
include major or minor version parameters when you use this
`deployment-type`.

#### 

`MINOR_VERSION`

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can specify a different minor version of
the current major version in use.

#### 

`MAJOR_VERSION`

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) major and minor version of the current
template by default. You can specify a different major version that's
higher than the major version in use and a minor version.

### Usage

    proton_update_service_pipeline(deploymentType, serviceName, spec,
      templateMajorVersion, templateMinorVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_service_pipeline_:_deploymentType">deploymentType</code></td>
<td><p>[required] The deployment type.</p>
<p>There are four modes for updating a service pipeline. The
<code>deploymentType</code> field defines the mode.</p>
<p><code>NONE</code></p>
<p>In this mode, a deployment <em>doesn't</em> occur. Only the requested
metadata parameters are updated.</p>
<p><code>CURRENT_VERSION</code></p>
<p>In this mode, the service pipeline is deployed and updated with the
new spec that you provide. Only requested parameters are updated.
<em>Don’t</em> include major or minor version parameters when you use
this <code>deployment-type</code>.</p>
<p><code>MINOR_VERSION</code></p>
<p>In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can specify a different minor version of
the current major version in use.</p>
<p><code>MAJOR_VERSION</code></p>
<p>In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can specify a different major version that's
higher than the major version in use and a minor version.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_pipeline_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service to that the pipeline is
associated with.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_service_pipeline_:_spec">spec</code></td>
<td><p>[required] The spec for the service pipeline to update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_pipeline_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>The major version of the service template that was used to create
the service that the pipeline is associated with.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_service_pipeline_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>The minor version of the service template that was used to create
the service that the pipeline is associated with.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$update_service_pipeline(
      deploymentType = "NONE"|"CURRENT_VERSION"|"MINOR_VERSION"|"MAJOR_VERSION",
      serviceName = "string",
      spec = "string",
      templateMajorVersion = "string",
      templateMinorVersion = "string"
    )
