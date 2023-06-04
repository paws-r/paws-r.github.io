<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_put_account_setting_default</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an account setting for all users on an account for whom no individual account setting has been specified

### Description

Modifies an account setting for all users on an account for whom no
individual account setting has been specified. Account settings are set
on a per-Region basis.

### Usage

    ecs_put_account_setting_default(name, value)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_put_account_setting_default_:_name">name</code></td>
<td><p>[required] The resource name for which to modify the account
setting. If <code>serviceLongArnFormat</code> is specified, the ARN for
your Amazon ECS services is affected. If <code>taskLongArnFormat</code>
is specified, the ARN and resource ID for your Amazon ECS tasks is
affected. If <code>containerInstanceLongArnFormat</code> is specified,
the ARN and resource ID for your Amazon ECS container instances is
affected. If <code>awsvpcTrunking</code> is specified, the ENI limit for
your Amazon ECS container instances is affected. If
<code>containerInsights</code> is specified, the default setting for
Amazon Web Services CloudWatch Container Insights for your clusters is
affected. If <code>tagResourceAuthorization</code> is specified, the
opt-in option for tagging resources on creation is affected. For
information about the opt-in timeline, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#tag-resources">Tagging
authorization timeline</a> in the <em>Amazon ECS Developer
Guide</em>.</p>
<p>When you specify <code>fargateFIPSMode</code> for the
<code>name</code> and <code>enabled</code> for the <code>value</code>,
Fargate uses FIPS-140 compliant cryptographic algorithms on your tasks.
For more information about FIPS-140 compliance with Fargate, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-fips-compliance.html">Amazon
Web Services Fargate Federal Information Processing Standard (FIPS)
140-2 compliance</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_put_account_setting_default_:_value">value</code></td>
<td><p>[required] The account setting value for the specified principal
ARN. Accepted values are <code>enabled</code>, <code>disabled</code>,
<code>on</code>, and <code>off</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      setting = list(
        name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
        value = "string",
        principalArn = "string"
      )
    )

### Request syntax

    svc$put_account_setting_default(
      name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
      value = "string"
    )

### Examples

    ## Not run: 
    # This example modifies the default account setting for the specified
    # resource for all IAM users or roles on an account. These changes apply
    # to the entire AWS account, unless an IAM user or role explicitly
    # overrides these settings for themselves.
    svc$put_account_setting_default(
      name = "serviceLongArnFormat",
      value = "enabled"
    )

    ## End(Not run)
