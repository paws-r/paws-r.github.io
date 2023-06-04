<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an environment

### Description

Update an environment.

If the environment is associated with an environment account connection,
*don't* update or include the `protonServiceRoleArn` and
`provisioningRepository` parameter to update or connect to an
environment account connection.

You can only update to a new environment account connection if that
connection was created in the same environment account that the current
environment account connection was created in. The account connection
must also be associated with the current environment.

If the environment *isn't* associated with an environment account
connection, *don't* update or include the
`environmentAccountConnectionId` parameter. You *can't* update or
connect the environment to an environment account connection if it
*isn't* already associated with an environment connection.

You can update either the `environmentAccountConnectionId` or
`protonServiceRoleArn` parameter and value. You can’t update both.

If the environment was configured for Amazon Web Services-managed
provisioning, omit the `provisioningRepository` parameter.

If the environment was configured for self-managed provisioning, specify
the `provisioningRepository` parameter and omit the
`protonServiceRoleArn` and `environmentAccountConnectionId` parameters.

For more information, see
[Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html)
and [Provisioning
methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
in the *Proton User Guide*.

There are four modes for updating an environment. The `deploymentType`
field defines the mode.

#### 

`NONE`

In this mode, a deployment *doesn't* occur. Only the requested metadata
parameters are updated.

#### 

`CURRENT_VERSION`

In this mode, the environment is deployed and updated with the new spec
that you provide. Only requested parameters are updated. *Don’t* include
minor or major version parameters when you use this `deployment-type`.

#### 

`MINOR_VERSION`

In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

#### 

`MAJOR_VERSION`

In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that's higher than the major version in use and a minor version.

### Usage

    proton_update_environment(codebuildRoleArn, componentRoleArn,
      deploymentType, description, environmentAccountConnectionId, name,
      protonServiceRoleArn, provisioningRepository, spec,
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
id="proton_update_environment_:_codebuildRoleArn">codebuildRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
allows Proton to provision infrastructure using CodeBuild-based
provisioning on your behalf.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_:_componentRoleArn">componentRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
Proton uses when provisioning directly defined components in this
environment. It determines the scope of infrastructure that a component
can provision.</p>
<p>The environment must have a <code>componentRoleArn</code> to allow
directly defined components to be associated with the environment.</p>
<p>For more information about components, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton
components</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_environment_:_deploymentType">deploymentType</code></td>
<td><p>[required] There are four modes for updating an environment. The
<code>deploymentType</code> field defines the mode.</p>
<p><code>NONE</code></p>
<p>In this mode, a deployment <em>doesn't</em> occur. Only the requested
metadata parameters are updated.</p>
<p><code>CURRENT_VERSION</code></p>
<p>In this mode, the environment is deployed and updated with the new
spec that you provide. Only requested parameters are updated.
<em>Don’t</em> include major or minor version parameters when you use
this <code>deployment-type</code>.</p>
<p><code>MINOR_VERSION</code></p>
<p>In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.</p>
<p><code>MAJOR_VERSION</code></p>
<p>In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_:_description">description</code></td>
<td><p>A description of the environment update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_environment_:_environmentAccountConnectionId">environmentAccountConnectionId</code></td>
<td><p>The ID of the environment account connection.</p>
<p>You can only update to a new environment account connection if it was
created in the same environment account that the current environment
account connection was created in and is associated with the current
environment.</p></td>
</tr>
<tr class="even">
<td><code id="proton_update_environment_:_name">name</code></td>
<td><p>[required] The name of the environment to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_environment_:_protonServiceRoleArn">protonServiceRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Proton service role that
allows Proton to make API calls to other services your behalf.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_:_provisioningRepository">provisioningRepository</code></td>
<td><p>The linked repository that you use to host your rendered
infrastructure templates for self-managed provisioning. A linked
repository is a repository that has been registered with Proton. For
more information, see <code>create_repository</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_environment_:_spec">spec</code></td>
<td><p>The formatted specification that defines the update.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_environment_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>The major version of the environment to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_update_environment_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>The minor version of the environment to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      environment = list(
        arn = "string",
        codebuildRoleArn = "string",
        componentRoleArn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
        deploymentStatusMessage = "string",
        description = "string",
        environmentAccountConnectionId = "string",
        environmentAccountId = "string",
        lastDeploymentAttemptedAt = as.POSIXct(
          "2015-01-01"
        ),
        lastDeploymentSucceededAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        protonServiceRoleArn = "string",
        provisioning = "CUSTOMER_MANAGED",
        provisioningRepository = list(
          arn = "string",
          branch = "string",
          name = "string",
          provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
        ),
        spec = "string",
        templateMajorVersion = "string",
        templateMinorVersion = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$update_environment(
      codebuildRoleArn = "string",
      componentRoleArn = "string",
      deploymentType = "NONE"|"CURRENT_VERSION"|"MINOR_VERSION"|"MAJOR_VERSION",
      description = "string",
      environmentAccountConnectionId = "string",
      name = "string",
      protonServiceRoleArn = "string",
      provisioningRepository = list(
        branch = "string",
        name = "string",
        provider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET"
      ),
      spec = "string",
      templateMajorVersion = "string",
      templateMinorVersion = "string"
    )
