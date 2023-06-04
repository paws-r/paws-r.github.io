<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_put_account_setting</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an account setting

### Description

Modifies an account setting. Account settings are set on a per-Region
basis.

If you change the root user account setting, the default settings are
reset for users and roles that do not have specified individual account
settings. For more information, see [Account
Settings](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html)
in the *Amazon Elastic Container Service Developer Guide*.

When `serviceLongArnFormat`, `taskLongArnFormat`, or
`containerInstanceLongArnFormat` are specified, the Amazon Resource Name
(ARN) and resource ID format of the resource type for a specified user,
role, or the root user for an account is affected. The opt-in and
opt-out account setting must be set for each Amazon ECS resource
separately. The ARN and resource ID format of a resource is defined by
the opt-in status of the user or role that created the resource. You
must turn on this setting to use Amazon ECS features such as resource
tagging.

When `awsvpcTrunking` is specified, the elastic network interface (ENI)
limit for any new container instances that support the feature is
changed. If `awsvpcTrunking` is turned on, any new container instances
that support the feature are launched have the increased ENI limits
available to them. For more information, see [Elastic Network Interface
Trunking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html)
in the *Amazon Elastic Container Service Developer Guide*.

When `containerInsights` is specified, the default setting indicating
whether Amazon Web Services CloudWatch Container Insights is turned on
for your clusters is changed. If `containerInsights` is turned on, any
new clusters that are created will have Container Insights turned on
unless you disable it during cluster creation. For more information, see
[CloudWatch Container
Insights](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html)
in the *Amazon Elastic Container Service Developer Guide*.

Amazon ECS is introducing tagging authorization for resource creation.
Users must have permissions for actions that create the resource, such
as `ecsCreateCluster`. If tags are specified when you create a resource,
Amazon Web Services performs additional authorization to verify if users
or roles have permissions to create tags. Therefore, you must grant
explicit permissions to use the `ecs:TagResource` action. For more
information, see [Grant permission to tag resources on
creation](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html)
in the *Amazon ECS Developer Guide*.

### Usage

    ecs_put_account_setting(name, value, principalArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_put_account_setting_:_name">name</code></td>
<td><p>[required] The Amazon ECS resource name for which to modify the
account setting. If <code>serviceLongArnFormat</code> is specified, the
ARN for your Amazon ECS services is affected. If
<code>taskLongArnFormat</code> is specified, the ARN and resource ID for
your Amazon ECS tasks is affected. If
<code>containerInstanceLongArnFormat</code> is specified, the ARN and
resource ID for your Amazon ECS container instances is affected. If
<code>awsvpcTrunking</code> is specified, the elastic network interface
(ENI) limit for your Amazon ECS container instances is affected. If
<code>containerInsights</code> is specified, the default setting for
Amazon Web Services CloudWatch Container Insights for your clusters is
affected. If <code>fargateFIPSMode</code> is specified, Fargate FIPS 140
compliance is affected. If <code>tagResourceAuthorization</code> is
specified, the opt-in option for tagging resources on creation is
affected. For information about the opt-in timeline, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#tag-resources">Tagging
authorization timeline</a> in the <em>Amazon ECS Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_put_account_setting_:_value">value</code></td>
<td><p>[required] The account setting value for the specified principal
ARN. Accepted values are <code>enabled</code>, <code>disabled</code>,
<code>on</code>, and <code>off</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_put_account_setting_:_principalArn">principalArn</code></td>
<td><p>The ARN of the principal, which can be a user, role, or the root
user. If you specify the root user, it modifies the account setting for
all users, roles, and the root user of the account unless a user or role
explicitly overrides these settings. If this field is omitted, the
setting is changed only for the authenticated user.</p>
<p>Federated users assume the account setting of the root user and can't
have explicit account settings set for them.</p></td>
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

    svc$put_account_setting(
      name = "serviceLongArnFormat"|"taskLongArnFormat"|"containerInstanceLongArnFormat"|"awsvpcTrunking"|"containerInsights"|"fargateFIPSMode"|"tagResourceAuthorization",
      value = "string",
      principalArn = "string"
    )

### Examples

    ## Not run: 
    # This example modifies your account settings to opt in to the new ARN and
    # resource ID format for Amazon ECS services. If you’re using this command
    # as the root user, then changes apply to the entire AWS account, unless
    # an IAM user or role explicitly overrides these settings for themselves.
    svc$put_account_setting(
      name = "serviceLongArnFormat",
      value = "enabled"
    )

    # This example modifies the account setting for a specific IAM user or IAM
    # role to opt in to the new ARN and resource ID format for Amazon ECS
    # container instances. If you’re using this command as the root user, then
    # changes apply to the entire AWS account, unless an IAM user or role
    # explicitly overrides these settings for themselves.
    svc$put_account_setting(
      name = "containerInstanceLongArnFormat",
      value = "enabled",
      principalArn = "arn:aws:iam::<aws_account_id>:user/principalName"
    )

    ## End(Not run)
