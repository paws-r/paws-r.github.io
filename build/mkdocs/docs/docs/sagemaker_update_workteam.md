<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing work team with new member definitions or description

### Description

Updates an existing work team with new member definitions or
description.

### Usage

    sagemaker_update_workteam(WorkteamName, MemberDefinitions, Description,
      NotificationConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_workteam_:_WorkteamName">WorkteamName</code></td>
<td><p>[required] The name of the work team to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_workteam_:_MemberDefinitions">MemberDefinitions</code></td>
<td><p>A list of <code>MemberDefinition</code> objects that contains
objects that identify the workers that make up the work team.</p>
<p>Workforces can be created using Amazon Cognito or your own OIDC
Identity Provider (IdP). For private workforces created using Amazon
Cognito use <code>CognitoMemberDefinition</code>. For workforces created
using your own OIDC identity provider (IdP) use
<code>OidcMemberDefinition</code>. You should not provide input for both
of these parameters in a single request.</p>
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
<code>Groups</code>. Be aware that user groups that are already in the
work team must also be listed in <code>Groups</code> when you make this
request to remain on the work team. If you do not include these user
groups, they will no longer be associated with the work team you
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_workteam_:_Description">Description</code></td>
<td><p>An updated description for the work team.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_workteam_:_NotificationConfiguration">NotificationConfiguration</code></td>
<td><p>Configures SNS topic notifications for available or expiring work
items</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workteam = list(
        WorkteamName = "string",
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
        WorkteamArn = "string",
        WorkforceArn = "string",
        ProductListingIds = list(
          "string"
        ),
        Description = "string",
        SubDomain = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedDate = as.POSIXct(
          "2015-01-01"
        ),
        NotificationConfiguration = list(
          NotificationTopicArn = "string"
        )
      )
    )

### Request syntax

    svc$update_workteam(
      WorkteamName = "string",
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
      )
    )
