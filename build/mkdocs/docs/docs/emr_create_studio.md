<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_create_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon EMR Studio

### Description

Creates a new Amazon EMR Studio.

### Usage

    emr_create_studio(Name, Description, AuthMode, VpcId, SubnetIds,
      ServiceRole, UserRole, WorkspaceSecurityGroupId, EngineSecurityGroupId,
      DefaultS3Location, IdpAuthUrl, IdpRelayStateParameterName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_create_studio_:_Name">Name</code></td>
<td><p>[required] A descriptive name for the Amazon EMR Studio.</p></td>
</tr>
<tr class="even">
<td><code id="emr_create_studio_:_Description">Description</code></td>
<td><p>A detailed description of the Amazon EMR Studio.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_create_studio_:_AuthMode">AuthMode</code></td>
<td><p>[required] Specifies whether the Studio authenticates users using
IAM or IAM Identity Center.</p></td>
</tr>
<tr class="even">
<td><code id="emr_create_studio_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the Amazon Virtual Private Cloud (Amazon
VPC) to associate with the Studio.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_create_studio_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] A list of subnet IDs to associate with the Amazon EMR
Studio. A Studio can have a maximum of 5 subnets. The subnets must
belong to the VPC specified by <code>VpcId</code>. Studio users can
create a Workspace in any of the specified subnets.</p></td>
</tr>
<tr class="even">
<td><code id="emr_create_studio_:_ServiceRole">ServiceRole</code></td>
<td><p>[required] The IAM role that the Amazon EMR Studio assumes. The
service role provides a way for Amazon EMR Studio to interoperate with
other Amazon Web Services services.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_create_studio_:_UserRole">UserRole</code></td>
<td><p>The IAM user role that users and groups assume when logged in to
an Amazon EMR Studio. Only specify a <code>UserRole</code> when you use
IAM Identity Center authentication. The permissions attached to the
<code>UserRole</code> can be scoped down for each user or group using
session policies.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_studio_:_WorkspaceSecurityGroupId">WorkspaceSecurityGroupId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio Workspace security
group. The Workspace security group allows outbound network traffic to
resources in the Engine security group, and it must be in the same VPC
specified by <code>VpcId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_create_studio_:_EngineSecurityGroupId">EngineSecurityGroupId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio Engine security group.
The Engine security group allows inbound network traffic from the
Workspace security group, and it must be in the same VPC specified by
<code>VpcId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_studio_:_DefaultS3Location">DefaultS3Location</code></td>
<td><p>[required] The Amazon S3 location to back up Amazon EMR Studio
Workspaces and notebook files.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_create_studio_:_IdpAuthUrl">IdpAuthUrl</code></td>
<td><p>The authentication endpoint of your identity provider (IdP).
Specify this value when you use IAM authentication and want to let
federated users log in to a Studio with the Studio URL and credentials
from your IdP. Amazon EMR Studio redirects users to this endpoint to
enter credentials.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_studio_:_IdpRelayStateParameterName">IdpRelayStateParameterName</code></td>
<td><p>The name that your identity provider (IdP) uses for its
<code>RelayState</code> parameter. For example, <code>RelayState</code>
or <code>TargetSource</code>. Specify this value when you use IAM
authentication and want to let federated users log in to a Studio using
the Studio URL. The <code>RelayState</code> parameter differs by
IdP.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_create_studio_:_Tags">Tags</code></td>
<td><p>A list of tags to associate with the Amazon EMR Studio. Tags are
user-defined key-value pairs that consist of a required key string with
a maximum of 128 characters, and an optional value string with a maximum
of 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StudioId = "string",
      Url = "string"
    )

### Request syntax

    svc$create_studio(
      Name = "string",
      Description = "string",
      AuthMode = "SSO"|"IAM",
      VpcId = "string",
      SubnetIds = list(
        "string"
      ),
      ServiceRole = "string",
      UserRole = "string",
      WorkspaceSecurityGroupId = "string",
      EngineSecurityGroupId = "string",
      DefaultS3Location = "string",
      IdpAuthUrl = "string",
      IdpRelayStateParameterName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
