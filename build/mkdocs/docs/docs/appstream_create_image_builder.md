<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_create_image_builder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an image builder

### Description

Creates an image builder. An image builder is a virtual machine that is
used to create an image.

The initial state of the builder is `PENDING`. When it is ready, the
state is `RUNNING`.

### Usage

    appstream_create_image_builder(Name, ImageName, ImageArn, InstanceType,
      Description, DisplayName, VpcConfig, IamRoleArn,
      EnableDefaultInternetAccess, DomainJoinInfo, AppstreamAgentVersion,
      Tags, AccessEndpoints)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_create_image_builder_:_Name">Name</code></td>
<td><p>[required] A unique name for the image builder.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_:_ImageName">ImageName</code></td>
<td><p>The name of the image used to create the image builder.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_ImageArn">ImageArn</code></td>
<td><p>The ARN of the public, private, or shared image to use.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_:_InstanceType">InstanceType</code></td>
<td><p>[required] The instance type to use when launching the image
builder. The following instance types are available:</p>
<ul>
<li><p>stream.standard.small</p></li>
<li><p>stream.standard.medium</p></li>
<li><p>stream.standard.large</p></li>
<li><p>stream.compute.large</p></li>
<li><p>stream.compute.xlarge</p></li>
<li><p>stream.compute.2xlarge</p></li>
<li><p>stream.compute.4xlarge</p></li>
<li><p>stream.compute.8xlarge</p></li>
<li><p>stream.memory.large</p></li>
<li><p>stream.memory.xlarge</p></li>
<li><p>stream.memory.2xlarge</p></li>
<li><p>stream.memory.4xlarge</p></li>
<li><p>stream.memory.8xlarge</p></li>
<li><p>stream.memory.z1d.large</p></li>
<li><p>stream.memory.z1d.xlarge</p></li>
<li><p>stream.memory.z1d.2xlarge</p></li>
<li><p>stream.memory.z1d.3xlarge</p></li>
<li><p>stream.memory.z1d.6xlarge</p></li>
<li><p>stream.memory.z1d.12xlarge</p></li>
<li><p>stream.graphics-design.large</p></li>
<li><p>stream.graphics-design.xlarge</p></li>
<li><p>stream.graphics-design.2xlarge</p></li>
<li><p>stream.graphics-design.4xlarge</p></li>
<li><p>stream.graphics-desktop.2xlarge</p></li>
<li><p>stream.graphics.g4dn.xlarge</p></li>
<li><p>stream.graphics.g4dn.2xlarge</p></li>
<li><p>stream.graphics.g4dn.4xlarge</p></li>
<li><p>stream.graphics.g4dn.8xlarge</p></li>
<li><p>stream.graphics.g4dn.12xlarge</p></li>
<li><p>stream.graphics.g4dn.16xlarge</p></li>
<li><p>stream.graphics-pro.4xlarge</p></li>
<li><p>stream.graphics-pro.8xlarge</p></li>
<li><p>stream.graphics-pro.16xlarge</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_Description">Description</code></td>
<td><p>The description to display.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_:_DisplayName">DisplayName</code></td>
<td><p>The image builder name to display.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_VpcConfig">VpcConfig</code></td>
<td><p>The VPC configuration for the image builder. You can specify only
one subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_:_IamRoleArn">IamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role to apply to the
image builder. To assume a role, the image builder calls the AWS
Security Token Service (STS) <code>AssumeRole</code> API operation and
passes the ARN of the role to use. The operation creates a new session
with temporary credentials. AppStream 2.0 retrieves the temporary
credentials and creates the <strong>appstream_machine_role</strong>
credential profile on the instance.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using
an IAM Role to Grant Permissions to Applications and Scripts Running on
AppStream 2.0 Streaming Instances</a> in the <em>Amazon AppStream 2.0
Administration Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_EnableDefaultInternetAccess">EnableDefaultInternetAccess</code></td>
<td><p>Enables or disables default internet access for the image
builder.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_create_image_builder_:_DomainJoinInfo">DomainJoinInfo</code></td>
<td><p>The name of the directory and organizational unit (OU) to use to
join the image builder to a Microsoft Active Directory domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_AppstreamAgentVersion">AppstreamAgentVersion</code></td>
<td><p>The version of the AppStream 2.0 agent to use for this image
builder. To use the latest version of the AppStream 2.0 agent, specify
[LATEST].</p></td>
</tr>
<tr class="even">
<td><code id="appstream_create_image_builder_:_Tags">Tags</code></td>
<td><p>The tags to associate with the image builder. A tag is a
key-value pair, and the value is optional. For example,
Environment=Test. If you do not specify a value, Environment=.</p>
<p>Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:</p>
<p>_ . : / = + \ - @</p>
<p>If you do not specify a value, the value is set to an empty
string.</p>
<p>For more information about tags, see <a
href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging
Your Resources</a> in the <em>Amazon AppStream 2.0 Administration
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_create_image_builder_:_AccessEndpoints">AccessEndpoints</code></td>
<td><p>The list of interface VPC endpoint (interface endpoint) objects.
Administrators can connect to the image builder only through the
specified endpoints.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageBuilder = list(
        Name = "string",
        Arn = "string",
        ImageArn = "string",
        Description = "string",
        DisplayName = "string",
        VpcConfig = list(
          SubnetIds = list(
            "string"
          ),
          SecurityGroupIds = list(
            "string"
          )
        ),
        InstanceType = "string",
        Platform = "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2",
        IamRoleArn = "string",
        State = "PENDING"|"UPDATING_AGENT"|"RUNNING"|"STOPPING"|"STOPPED"|"REBOOTING"|"SNAPSHOTTING"|"DELETING"|"FAILED"|"UPDATING"|"PENDING_QUALIFICATION",
        StateChangeReason = list(
          Code = "INTERNAL_ERROR"|"IMAGE_UNAVAILABLE",
          Message = "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        EnableDefaultInternetAccess = TRUE|FALSE,
        DomainJoinInfo = list(
          DirectoryName = "string",
          OrganizationalUnitDistinguishedName = "string"
        ),
        NetworkAccessConfiguration = list(
          EniPrivateIpAddress = "string",
          EniId = "string"
        ),
        ImageBuilderErrors = list(
          list(
            ErrorCode = "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"|"IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"|"IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"|"NETWORK_INTERFACE_LIMIT_EXCEEDED"|"INTERNAL_SERVICE_ERROR"|"IAM_SERVICE_ROLE_IS_MISSING"|"MACHINE_ROLE_IS_MISSING"|"STS_DISABLED_IN_REGION"|"SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"|"IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"|"SUBNET_NOT_FOUND"|"IMAGE_NOT_FOUND"|"INVALID_SUBNET_CONFIGURATION"|"SECURITY_GROUPS_NOT_FOUND"|"IGW_NOT_ATTACHED"|"IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"|"FLEET_STOPPED"|"FLEET_INSTANCE_PROVISIONING_FAILURE"|"DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"|"DOMAIN_JOIN_ERROR_ACCESS_DENIED"|"DOMAIN_JOIN_ERROR_LOGON_FAILURE"|"DOMAIN_JOIN_ERROR_INVALID_PARAMETER"|"DOMAIN_JOIN_ERROR_MORE_DATA"|"DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"|"DOMAIN_JOIN_ERROR_NOT_SUPPORTED"|"DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"|"DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"|"DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"|"DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"|"DOMAIN_JOIN_INTERNAL_SERVICE_ERROR",
            ErrorMessage = "string",
            ErrorTimestamp = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        AppstreamAgentVersion = "string",
        AccessEndpoints = list(
          list(
            EndpointType = "STREAMING",
            VpceId = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_image_builder(
      Name = "string",
      ImageName = "string",
      ImageArn = "string",
      InstanceType = "string",
      Description = "string",
      DisplayName = "string",
      VpcConfig = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      IamRoleArn = "string",
      EnableDefaultInternetAccess = TRUE|FALSE,
      DomainJoinInfo = list(
        DirectoryName = "string",
        OrganizationalUnitDistinguishedName = "string"
      ),
      AppstreamAgentVersion = "string",
      Tags = list(
        "string"
      ),
      AccessEndpoints = list(
        list(
          EndpointType = "STREAMING",
          VpceId = "string"
        )
      )
    )
