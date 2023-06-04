<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_create_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deploy a new environment

### Description

Deploy a new environment. An Proton environment is created from an
environment template that defines infrastructure and resources that can
be shared across services.

**You can provision environments using the following methods:**

-   Amazon Web Services-managed provisioning: Proton makes direct calls
    to provision your resources.

-   Self-managed provisioning: Proton makes pull requests on your
    repository to provide compiled infrastructure as code (IaC) files
    that your IaC engine uses to provision resources.

For more information, see
[Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html)
and [Provisioning
methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
in the *Proton User Guide*.

### Usage

    proton_create_environment(codebuildRoleArn, componentRoleArn,
      description, environmentAccountConnectionId, name, protonServiceRoleArn,
      provisioningRepository, spec, tags, templateMajorVersion,
      templateMinorVersion, templateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_create_environment_:_codebuildRoleArn">codebuildRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
allows Proton to provision infrastructure using CodeBuild-based
provisioning on your behalf.</p>
<p>To use CodeBuild-based provisioning for the environment or for any
service instance running in the environment, specify either the
<code>environmentAccountConnectionId</code> or
<code>codebuildRoleArn</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_:_componentRoleArn">componentRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM service role that
Proton uses when provisioning directly defined components in this
environment. It determines the scope of infrastructure that a component
can provision.</p>
<p>You must specify <code>componentRoleArn</code> to allow directly
defined components to be associated with this environment.</p>
<p>For more information about components, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton
components</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_:_description">description</code></td>
<td><p>A description of the environment that's being created and
deployed.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_:_environmentAccountConnectionId">environmentAccountConnectionId</code></td>
<td><p>The ID of the environment account connection that you provide if
you're provisioning your environment infrastructure resources to an
environment account. For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment
account connections</a> in the <em>Proton User guide</em>.</p>
<p>To use Amazon Web Services-managed provisioning for the environment,
specify either the <code>environmentAccountConnectionId</code> or
<code>protonServiceRoleArn</code> parameter and omit the
<code>provisioningRepository</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_environment_:_name">name</code></td>
<td><p>[required] The name of the environment.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_:_protonServiceRoleArn">protonServiceRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Proton service role that
allows Proton to make calls to other services on your behalf.</p>
<p>To use Amazon Web Services-managed provisioning for the environment,
specify either the <code>environmentAccountConnectionId</code> or
<code>protonServiceRoleArn</code> parameter and omit the
<code>provisioningRepository</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_:_provisioningRepository">provisioningRepository</code></td>
<td><p>The linked repository that you use to host your rendered
infrastructure templates for self-managed provisioning. A linked
repository is a repository that has been registered with Proton. For
more information, see <code>create_repository</code>.</p>
<p>To use self-managed provisioning for the environment, specify this
parameter and omit the <code>environmentAccountConnectionId</code> and
<code>protonServiceRoleArn</code> parameters.</p></td>
</tr>
<tr class="even">
<td><code id="proton_create_environment_:_spec">spec</code></td>
<td><p>[required] A YAML formatted string that provides inputs as
defined in the environment template bundle schema file. For more
information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html">Environments</a>
in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_create_environment_:_tags">tags</code></td>
<td><p>An optional list of metadata items that you can associate with
the Proton environment. A tag is a key-value pair.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
resources and tagging</a> in the <em>Proton User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_:_templateMajorVersion">templateMajorVersion</code></td>
<td><p>[required] The major version of the environment
template.</p></td>
</tr>
<tr class="odd">
<td><code
id="proton_create_environment_:_templateMinorVersion">templateMinorVersion</code></td>
<td><p>The minor version of the environment template.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_create_environment_:_templateName">templateName</code></td>
<td><p>[required] The name of the environment template. For more
information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html">Environment
Templates</a> in the <em>Proton User Guide</em>.</p></td>
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

    svc$create_environment(
      codebuildRoleArn = "string",
      componentRoleArn = "string",
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
