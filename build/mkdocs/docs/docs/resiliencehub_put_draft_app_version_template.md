<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_put_draft_app_version_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates the app template for an Resilience Hub application draft version

### Description

Adds or updates the app template for an Resilience Hub application draft
version.

### Usage

    resiliencehub_put_draft_app_version_template(appArn, appTemplateBody)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_put_draft_app_version_template_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_put_draft_app_version_template_:_appTemplateBody">appTemplateBody</code></td>
<td><p>[required] A JSON string that provides information about your
application structure. To learn more about the
<code>appTemplateBody</code> template, see the sample template provided
in the <em>Examples</em> section.</p>
<p>The <code>appTemplateBody</code> JSON string has the following
structure:</p>
<ul>
<li><p><strong><code>resources</code></strong></p>
<p>The list of logical resources that must be included in the Resilience
Hub application.</p>
<p>Type: Array</p>
<p>Don't add the resources that you want to exclude.</p>
<p>Each <code>resources</code> array item includes the following
fields:</p>
<ul>
<li><p><em>logicalResourceId</em></p>
<p>The logical identifier of the resource.</p>
<p>Type: Object</p>
<p>Each <code>logicalResourceId</code> object includes the following
fields:</p>
<ul>
<li><p><code>identifier</code></p>
<p>The identifier of the resource.</p>
<p>Type: String</p></li>
<li><p><code>logicalStackName</code></p>
<p>The name of the CloudFormation stack this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>resourceGroupName</code></p>
<p>The name of the resource group this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>terraformSourceName</code></p>
<p>The name of the Terraform S3 state file this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>eksSourceName</code></p>
<p>The name of the Amazon Elastic Kubernetes Service cluster and
namespace this resource belongs to.</p>
<p>This parameter accepts values in "eks-cluster/namespace" format.</p>
<p>Type: String</p></li>
</ul></li>
<li><p><em>type</em></p>
<p>The type of resource.</p>
<p>Type: string</p></li>
<li><p><em>name</em></p>
<p>The name of the resource.</p>
<p>Type: String</p></li>
<li><p><code>additionalInfo</code></p>
<p>Additional configuration parameters for an Resilience Hub
application. If you want to implement <code>additionalInfo</code>
through the Resilience Hub console rather than using an API call, see <a
href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure
the application configuration parameters</a>.</p>
<p>Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.</p>
<p>Key: <code>"failover-regions"</code></p>
<p>Value: <code
style="white-space: pre;">⁠"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"⁠</code></p></li>
</ul></li>
<li><p><strong><code>appComponents</code></strong></p>
<p>The list of Application Components that this resource belongs to. If
an Application Component is not part of the Resilience Hub application,
it will be added.</p>
<p>Type: Array</p>
<p>Each <code>appComponents</code> array item includes the following
fields:</p>
<ul>
<li><p><code>name</code></p>
<p>The name of the Application Component.</p>
<p>Type: String</p></li>
<li><p><code>type</code></p>
<p>The type of Application Component. For more information about the
types of Application Component, see <a
href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping
resources in an AppComponent</a>.</p>
<p>Type: String</p></li>
<li><p><code>resourceNames</code></p>
<p>The list of included resources that are assigned to the Application
Component.</p>
<p>Type: Array of strings</p></li>
<li><p><code>additionalInfo</code></p>
<p>Additional configuration parameters for an Resilience Hub
application. If you want to implement <code>additionalInfo</code>
through the Resilience Hub console rather than using an API call, see <a
href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure
the application configuration parameters</a>.</p>
<p>Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.</p>
<p>Key: <code>"failover-regions"</code></p>
<p>Value: <code
style="white-space: pre;">⁠"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"⁠</code></p></li>
</ul></li>
<li><p><strong><code>excludedResources</code></strong></p>
<p>The list of logical resource identifiers to be excluded from the
application.</p>
<p>Type: Array</p>
<p>Don't add the resources that you want to include.</p>
<p>Each <code>excludedResources</code> array item includes the following
fields:</p>
<ul>
<li><p><em>logicalResourceIds</em></p>
<p>The logical identifier of the resource.</p>
<p>Type: Object</p>
<p>You can configure only one of the following fields:</p>
<ul>
<li><p><code>logicalStackName</code></p></li>
<li><p><code>resourceGroupName</code></p></li>
<li><p><code>terraformSourceName</code></p></li>
<li><p><code>eksSourceName</code></p></li>
</ul>
<p>Each <code>logicalResourceIds</code> object includes the following
fields:</p>
<ul>
<li><p><code>identifier</code></p>
<p>The identifier of the resource.</p>
<p>Type: String</p></li>
<li><p><code>logicalStackName</code></p>
<p>The name of the CloudFormation stack this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>resourceGroupName</code></p>
<p>The name of the resource group this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>terraformSourceName</code></p>
<p>The name of the Terraform S3 state file this resource belongs to.</p>
<p>Type: String</p></li>
<li><p><code>eksSourceName</code></p>
<p>The name of the Amazon Elastic Kubernetes Service cluster and
namespace this resource belongs to.</p>
<p>This parameter accepts values in "eks-cluster/namespace" format.</p>
<p>Type: String</p></li>
</ul></li>
</ul></li>
<li><p><strong><code>version</code></strong></p>
<p>The Resilience Hub application version.</p></li>
<li><p><code>additionalInfo</code></p>
<p>Additional configuration parameters for an Resilience Hub
application. If you want to implement <code>additionalInfo</code>
through the Resilience Hub console rather than using an API call, see <a
href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure
the application configuration parameters</a>.</p>
<p>Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.</p>
<p>Key: <code>"failover-regions"</code></p>
<p>Value: <code
style="white-space: pre;">⁠"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"⁠</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      appArn = "string",
      appVersion = "string"
    )

### Request syntax

    svc$put_draft_app_version_template(
      appArn = "string",
      appTemplateBody = "string"
    )
