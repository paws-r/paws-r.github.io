<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_create_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a broker

### Description

Creates a broker. Note: This API is asynchronous.

To create a broker, you must either use the AmazonMQFullAccess IAM
policy or include the following EC2 permissions in your IAM policy.

-   ec2:CreateNetworkInterface

    This permission is required to allow Amazon MQ to create an elastic
    network interface (ENI) on behalf of your account.

-   ec2:CreateNetworkInterfacePermission

    This permission is required to attach the ENI to the broker
    instance.

-   ec2:DeleteNetworkInterface

-   ec2:DeleteNetworkInterfacePermission

-   ec2:DetachNetworkInterface

-   ec2:DescribeInternetGateways

-   ec2:DescribeNetworkInterfaces

-   ec2:DescribeNetworkInterfacePermissions

-   ec2:DescribeRouteTables

-   ec2:DescribeSecurityGroups

-   ec2:DescribeSubnets

-   ec2:DescribeVpcs

For more information, see [Create an IAM User and Get Your AWS
Credentials](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user)
and [Never Modify or Delete the Amazon MQ Elastic Network
Interface](https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface)
in the *Amazon MQ Developer Guide*.

### Usage

    mq_create_broker(AuthenticationStrategy, AutoMinorVersionUpgrade,
      BrokerName, Configuration, CreatorRequestId, DeploymentMode,
      EncryptionOptions, EngineType, EngineVersion, HostInstanceType,
      LdapServerMetadata, Logs, MaintenanceWindowStartTime,
      PubliclyAccessible, SecurityGroups, StorageType, SubnetIds, Tags, Users)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_create_broker_:_AuthenticationStrategy">AuthenticationStrategy</code></td>
<td><p>Optional. The authentication strategy used to secure the broker.
The default is SIMPLE.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_broker_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>[required] Enables automatic upgrades to new minor versions for
brokers, as new versions are released and supported by Amazon MQ.
Automatic upgrades occur during the scheduled maintenance window of the
broker or after a manual broker reboot. Set to true by default, if no
value is specified.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_broker_:_BrokerName">BrokerName</code></td>
<td><p>[required] Required. The broker's name. This value must be unique
in your AWS account, 1-50 characters long, must contain only letters,
numbers, dashes, and underscores, and must not contain white spaces,
brackets, wildcard characters, or special characters.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_broker_:_Configuration">Configuration</code></td>
<td><p>A list of information about the configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>The unique ID that the requester receives for the created broker.
Amazon MQ passes your ID with the API action. Note: We recommend using a
Universally Unique Identifier (UUID) for the creatorRequestId. You may
omit the creatorRequestId if your application doesn't require
idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_broker_:_DeploymentMode">DeploymentMode</code></td>
<td><p>[required] Required. The broker's deployment mode.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_EncryptionOptions">EncryptionOptions</code></td>
<td><p>Encryption options for the broker. Does not apply to RabbitMQ
brokers.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_broker_:_EngineType">EngineType</code></td>
<td><p>[required] Required. The type of broker engine. Currently, Amazon
MQ supports ACTIVEMQ and RABBITMQ.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_EngineVersion">EngineVersion</code></td>
<td><p>[required] Required. The broker engine's version. For a list of
supported engine versions, see <a
href="https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/">Supported
engines</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_broker_:_HostInstanceType">HostInstanceType</code></td>
<td><p>[required] Required. The broker's instance type.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_LdapServerMetadata">LdapServerMetadata</code></td>
<td><p>Optional. The metadata of the LDAP server used to authenticate
and authorize connections to the broker. Does not apply to RabbitMQ
brokers.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_broker_:_Logs">Logs</code></td>
<td><p>Enables Amazon CloudWatch logging for brokers.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_MaintenanceWindowStartTime">MaintenanceWindowStartTime</code></td>
<td><p>The parameters that determine the WeeklyStartTime.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_broker_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>[required] Enables connections from applications outside of the
VPC that hosts the broker's subnets. Set to false by default, if no
value is provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_broker_:_SecurityGroups">SecurityGroups</code></td>
<td><p>The list of rules (1 minimum, 125 maximum) that authorize
connections to brokers.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_broker_:_StorageType">StorageType</code></td>
<td><p>The broker's storage type.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_broker_:_SubnetIds">SubnetIds</code></td>
<td><p>The list of groups that define which subnets and IP ranges the
broker can use from different Availability Zones. If you specify more
than one subnet, the subnets must be in different Availability Zones.
Amazon MQ will not be able to create VPC endpoints for your broker with
multiple subnets in the same Availability Zone. A SINGLE_INSTANCE
deployment requires one subnet (for example, the default subnet). An
ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two
subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no
subnet requirements when deployed with public accessibility. Deployment
without public accessibility requires at least one subnet.</p>
<p>If you specify subnets in a <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">shared
VPC</a> for a RabbitMQ broker, the associated VPC to which the specified
subnets belong must be owned by your AWS account. Amazon MQ will not be
able to create VPC endpoints in VPCs that are not owned by your AWS
account.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_broker_:_Tags">Tags</code></td>
<td><p>Create tags when creating the broker.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_broker_:_Users">Users</code></td>
<td><p>[required] Required. The list of broker users (persons or
applications) who can access queues and topics. This value can contain
only alphanumeric characters, dashes, periods, underscores, and tildes
(- . _ ~). This value must be 2-100 characters long.</p>
<p>Amazon MQ for RabbitMQ</p>
<p>When you create an Amazon MQ for RabbitMQ broker, one and only one
administrative user is accepted and created when a broker is first
provisioned. All subsequent broker users are created by making RabbitMQ
API calls directly to brokers or via the RabbitMQ web console.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BrokerArn = "string",
      BrokerId = "string"
    )

### Request syntax

    svc$create_broker(
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      BrokerName = "string",
      Configuration = list(
        Id = "string",
        Revision = 123
      ),
      CreatorRequestId = "string",
      DeploymentMode = "SINGLE_INSTANCE"|"ACTIVE_STANDBY_MULTI_AZ"|"CLUSTER_MULTI_AZ",
      EncryptionOptions = list(
        KmsKeyId = "string",
        UseAwsOwnedKey = TRUE|FALSE
      ),
      EngineType = "ACTIVEMQ"|"RABBITMQ",
      EngineVersion = "string",
      HostInstanceType = "string",
      LdapServerMetadata = list(
        Hosts = list(
          "string"
        ),
        RoleBase = "string",
        RoleName = "string",
        RoleSearchMatching = "string",
        RoleSearchSubtree = TRUE|FALSE,
        ServiceAccountPassword = "string",
        ServiceAccountUsername = "string",
        UserBase = "string",
        UserRoleName = "string",
        UserSearchMatching = "string",
        UserSearchSubtree = TRUE|FALSE
      ),
      Logs = list(
        Audit = TRUE|FALSE,
        General = TRUE|FALSE
      ),
      MaintenanceWindowStartTime = list(
        DayOfWeek = "MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"|"SUNDAY",
        TimeOfDay = "string",
        TimeZone = "string"
      ),
      PubliclyAccessible = TRUE|FALSE,
      SecurityGroups = list(
        "string"
      ),
      StorageType = "EBS"|"EFS",
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        "string"
      ),
      Users = list(
        list(
          ConsoleAccess = TRUE|FALSE,
          Groups = list(
            "string"
          ),
          Password = "string",
          Username = "string"
        )
      )
    )
