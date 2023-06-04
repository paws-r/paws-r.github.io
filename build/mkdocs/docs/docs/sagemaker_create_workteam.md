<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new work team for labeling your data

### Description

Creates a new work team for labeling your data. A work team is defined
by one or more Amazon Cognito user pools. You must first create the user
pools before you can create a work team.

You cannot create more than 25 work teams in an account and region.

### Usage

    sagemaker_create_workteam(WorkteamName, WorkforceName,
      MemberDefinitions, Description, NotificationConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_workteam_:_WorkteamName">WorkteamName</code></td>
<td><p>[required] The name of the work team. Use this name to identify
the work team.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_workteam_:_WorkforceName">WorkforceName</code></td>
<td><p>The name of the workforce.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_workteam_:_MemberDefinitions">MemberDefinitions</code></td>
<td><p>[required] A list of <code>MemberDefinition</code> objects that
contains objects that identify the workers that make up the work
team.</p>
<p>Workforces can be created using Amazon Cognito or your own OIDC
Identity Provider (IdP). For private workforces created using Amazon
Cognito use <code>CognitoMemberDefinition</code>. For workforces created
using your own OIDC identity provider (IdP) use
<code>OidcMemberDefinition</code>. Do not provide input for both of
these parameters in a single request.</p>
<p>For workforces created using Amazon Cognito, private work teams
correspond to Amazon Cognito <em>user groups</em> within the user pool
used to create a workforce. All of the
<code>CognitoMemberDefinition</code> objects that make up the member
definition must have the same <code>ClientId</code> and
<code>UserPool</code> values. To add a Amazon Cognito user group to an
existing worker pool, see Adding groups to a User Pool. For more
information about user pools, see <a
href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools.html">Amazon
Cognito User Pools</a>.</p>
<p>For workforces created using your own OIDC IdP, specify the user
groups that you want to include in your private work team in
<code>OidcMemberDefinition</code> by listing those groups in
<code>Groups</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_workteam_:_Description">Description</code></td>
<td><p>[required] A description of the work team.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_workteam_:_NotificationConfiguration">NotificationConfiguration</code></td>
<td><p>Configures notification of workers regarding available or
expiring work items.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_workteam_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html">Resource
Tag</a> and <a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkteamArn = "string"
    )

### Request syntax

    svc$create_workteam(
      WorkteamName = "string",
      WorkforceName = "string",
      MemberDefinitions = list(
        list(
          CognitoMemberDefinition = list(
            UserPool = "string",
            UserGroup = "string",
            ClientId = "string"
          ),
          OidcMemberDefinition = list(
            Groups = list(
              "string"
            )
          )
        )
      ),
      Description = "string",
      NotificationConfiguration = list(
        NotificationTopicArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
