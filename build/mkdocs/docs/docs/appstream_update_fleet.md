<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_update_fleet</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified fleet

### Description

Updates the specified fleet.

If the fleet is in the `STOPPED` state, you can update any attribute
except the fleet name.

If the fleet is in the `RUNNING` state, you can update the following
based on the fleet type:

-   Always-On and On-Demand fleet types

    You can update the `DisplayName`, `ComputeCapacity`, `ImageARN`,
    `ImageName`, `IdleDisconnectTimeoutInSeconds`, and
    `DisconnectTimeoutInSeconds` attributes.

-   Elastic fleet type

    You can update the `DisplayName`, `IdleDisconnectTimeoutInSeconds`,
    `DisconnectTimeoutInSeconds`, `MaxConcurrentSessions`,
    `SessionScriptS3Location` and `UsbDeviceFilterStrings` attributes.

If the fleet is in the `STARTING` or `STOPPED` state, you can't update
it.

### Usage

    appstream_update_fleet(ImageName, ImageArn, Name, InstanceType,
      ComputeCapacity, VpcConfig, MaxUserDurationInSeconds,
      DisconnectTimeoutInSeconds, DeleteVpcConfig, Description, DisplayName,
      EnableDefaultInternetAccess, DomainJoinInfo,
      IdleDisconnectTimeoutInSeconds, AttributesToDelete, IamRoleArn,
      StreamView, Platform, MaxConcurrentSessions, UsbDeviceFilterStrings,
      SessionScriptS3Location)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_update_fleet_:_ImageName">ImageName</code></td>
<td><p>The name of the image used to create the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_update_fleet_:_ImageArn">ImageArn</code></td>
<td><p>The ARN of the public, private, or shared image to use.</p></td>
</tr>
<tr class="odd">
<td><code id="appstream_update_fleet_:_Name">Name</code></td>
<td><p>A unique name for the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_InstanceType">InstanceType</code></td>
<td><p>The instance type to use when launching fleet instances. The
following instance types are available:</p>
<ul>
<li><p>stream.standard.small</p></li>
<li><p>stream.standard.medium</p></li>
<li><p>stream.standard.large</p></li>
<li><p>stream.standard.xlarge</p></li>
<li><p>stream.standard.2xlarge</p></li>
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
</ul>
<p>The following instance types are available for Elastic fleets:</p>
<ul>
<li><p>stream.standard.small</p></li>
<li><p>stream.standard.medium</p></li>
<li><p>stream.standard.large</p></li>
<li><p>stream.standard.xlarge</p></li>
<li><p>stream.standard.2xlarge</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_ComputeCapacity">ComputeCapacity</code></td>
<td><p>The desired capacity for the fleet. This is not allowed for
Elastic fleets.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_update_fleet_:_VpcConfig">VpcConfig</code></td>
<td><p>The VPC configuration for the fleet. This is required for Elastic
fleets, but not required for other fleet types. Elastic fleets require
that you specify at least two subnets in different availability
zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_MaxUserDurationInSeconds">MaxUserDurationInSeconds</code></td>
<td><p>The maximum amount of time that a streaming session can remain
active, in seconds. If users are still connected to a streaming instance
five minutes before this limit is reached, they are prompted to save any
open documents before being disconnected. After this time elapses, the
instance is terminated and replaced by a new instance.</p>
<p>Specify a value between 600 and 360000.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_DisconnectTimeoutInSeconds">DisconnectTimeoutInSeconds</code></td>
<td><p>The amount of time that a streaming session remains active after
users disconnect. If users try to reconnect to the streaming session
after a disconnection or network interruption within this time interval,
they are connected to their previous session. Otherwise, they are
connected to a new session with a new streaming instance.</p>
<p>Specify a value between 60 and 360000.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_DeleteVpcConfig">DeleteVpcConfig</code></td>
<td><p>Deletes the VPC association for the specified fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_Description">Description</code></td>
<td><p>The description to display.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_DisplayName">DisplayName</code></td>
<td><p>The fleet name to display.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_EnableDefaultInternetAccess">EnableDefaultInternetAccess</code></td>
<td><p>Enables or disables default internet access for the
fleet.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_DomainJoinInfo">DomainJoinInfo</code></td>
<td><p>The name of the directory and organizational unit (OU) to use to
join the fleet to a Microsoft Active Directory domain.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_IdleDisconnectTimeoutInSeconds">IdleDisconnectTimeoutInSeconds</code></td>
<td><p>The amount of time that users can be idle (inactive) before they
are disconnected from their streaming session and the
<code>DisconnectTimeoutInSeconds</code> time interval begins. Users are
notified before they are disconnected due to inactivity. If users try to
reconnect to the streaming session before the time interval specified in
<code>DisconnectTimeoutInSeconds</code> elapses, they are connected to
their previous session. Users are considered idle when they stop
providing keyboard or mouse input during their streaming session. File
uploads and downloads, audio in, audio out, and pixels changing do not
qualify as user activity. If users continue to be idle after the time
interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they
are disconnected.</p>
<p>To prevent users from being disconnected due to inactivity, specify a
value of 0. Otherwise, specify a value between 60 and 3600. The default
value is 0.</p>
<p>If you enable this feature, we recommend that you specify a value
that corresponds exactly to a whole number of minutes (for example, 60,
120, and 180). If you don't do this, the value is rounded to the nearest
minute. For example, if you specify a value of 70, users are
disconnected after 1 minute of inactivity. If you specify a value that
is at the midpoint between two different minutes, the value is rounded
up. For example, if you specify a value of 90, users are disconnected
after 2 minutes of inactivity.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_AttributesToDelete">AttributesToDelete</code></td>
<td><p>The fleet attributes to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_IamRoleArn">IamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role to apply to the
fleet. To assume a role, a fleet instance calls the AWS Security Token
Service (STS) <code>AssumeRole</code> API operation and passes the ARN
of the role to use. The operation creates a new session with temporary
credentials. AppStream 2.0 retrieves the temporary credentials and
creates the <strong>appstream_machine_role</strong> credential profile
on the instance.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using
an IAM Role to Grant Permissions to Applications and Scripts Running on
AppStream 2.0 Streaming Instances</a> in the <em>Amazon AppStream 2.0
Administration Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_StreamView">StreamView</code></td>
<td><p>The AppStream 2.0 view that is displayed to your users when they
stream from the fleet. When <code>APP</code> is specified, only the
windows of applications opened by users display. When
<code>DESKTOP</code> is specified, the standard desktop that is provided
by the operating system displays.</p>
<p>The default value is <code>APP</code>.</p></td>
</tr>
<tr class="even">
<td><code id="appstream_update_fleet_:_Platform">Platform</code></td>
<td><p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2
are supported for Elastic fleets.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_MaxConcurrentSessions">MaxConcurrentSessions</code></td>
<td><p>The maximum number of concurrent sessions for a fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_fleet_:_UsbDeviceFilterStrings">UsbDeviceFilterStrings</code></td>
<td><p>The USB device filter strings that specify which USB devices a
user can redirect to the fleet streaming session, when using the Windows
native client. This is allowed but not required for Elastic
fleets.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_fleet_:_SessionScriptS3Location">SessionScriptS3Location</code></td>
<td><p>The S3 location of the session scripts configuration zip file.
This only applies to Elastic fleets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Fleet = list(
        Arn = "string",
        Name = "string",
        DisplayName = "string",
        Description = "string",
        ImageName = "string",
        ImageArn = "string",
        InstanceType = "string",
        FleetType = "ALWAYS_ON"|"ON_DEMAND"|"ELASTIC",
        ComputeCapacityStatus = list(
          Desired = 123,
          Running = 123,
          InUse = 123,
          Available = 123
        ),
        MaxUserDurationInSeconds = 123,
        DisconnectTimeoutInSeconds = 123,
        State = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED",
        VpcConfig = list(
          SubnetIds = list(
            "string"
          ),
          SecurityGroupIds = list(
            "string"
          )
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        FleetErrors = list(
          list(
            ErrorCode = "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"|"IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"|"IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"|"NETWORK_INTERFACE_LIMIT_EXCEEDED"|"INTERNAL_SERVICE_ERROR"|"IAM_SERVICE_ROLE_IS_MISSING"|"MACHINE_ROLE_IS_MISSING"|"STS_DISABLED_IN_REGION"|"SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"|"IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"|"SUBNET_NOT_FOUND"|"IMAGE_NOT_FOUND"|"INVALID_SUBNET_CONFIGURATION"|"SECURITY_GROUPS_NOT_FOUND"|"IGW_NOT_ATTACHED"|"IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"|"FLEET_STOPPED"|"FLEET_INSTANCE_PROVISIONING_FAILURE"|"DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"|"DOMAIN_JOIN_ERROR_ACCESS_DENIED"|"DOMAIN_JOIN_ERROR_LOGON_FAILURE"|"DOMAIN_JOIN_ERROR_INVALID_PARAMETER"|"DOMAIN_JOIN_ERROR_MORE_DATA"|"DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"|"DOMAIN_JOIN_ERROR_NOT_SUPPORTED"|"DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"|"DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"|"DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"|"DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"|"DOMAIN_JOIN_INTERNAL_SERVICE_ERROR",
            ErrorMessage = "string"
          )
        ),
        EnableDefaultInternetAccess = TRUE|FALSE,
        DomainJoinInfo = list(
          DirectoryName = "string",
          OrganizationalUnitDistinguishedName = "string"
        ),
        IdleDisconnectTimeoutInSeconds = 123,
        IamRoleArn = "string",
        StreamView = "APP"|"DESKTOP",
        Platform = "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2",
        MaxConcurrentSessions = 123,
        UsbDeviceFilterStrings = list(
          "string"
        ),
        SessionScriptS3Location = list(
          S3Bucket = "string",
          S3Key = "string"
        )
      )
    )

### Request syntax

    svc$update_fleet(
      ImageName = "string",
      ImageArn = "string",
      Name = "string",
      InstanceType = "string",
      ComputeCapacity = list(
        DesiredInstances = 123
      ),
      VpcConfig = list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      ),
      MaxUserDurationInSeconds = 123,
      DisconnectTimeoutInSeconds = 123,
      DeleteVpcConfig = TRUE|FALSE,
      Description = "string",
      DisplayName = "string",
      EnableDefaultInternetAccess = TRUE|FALSE,
      DomainJoinInfo = list(
        DirectoryName = "string",
        OrganizationalUnitDistinguishedName = "string"
      ),
      IdleDisconnectTimeoutInSeconds = 123,
      AttributesToDelete = list(
        "VPC_CONFIGURATION"|"VPC_CONFIGURATION_SECURITY_GROUP_IDS"|"DOMAIN_JOIN_INFO"|"IAM_ROLE_ARN"|"USB_DEVICE_FILTER_STRINGS"|"SESSION_SCRIPT_S3_LOCATION"
      ),
      IamRoleArn = "string",
      StreamView = "APP"|"DESKTOP",
      Platform = "WINDOWS"|"WINDOWS_SERVER_2016"|"WINDOWS_SERVER_2019"|"AMAZON_LINUX2",
      MaxConcurrentSessions = 123,
      UsbDeviceFilterStrings = list(
        "string"
      ),
      SessionScriptS3Location = list(
        S3Bucket = "string",
        S3Key = "string"
      )
    )
