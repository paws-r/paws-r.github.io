<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified broker

### Description

Returns information about the specified broker.

### Usage

    mq_describe_broker(BrokerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mq_describe_broker_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionsRequired = list(
        list(
          ActionRequiredCode = "string",
          ActionRequiredInfo = "string"
        )
      ),
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      BrokerArn = "string",
      BrokerId = "string",
      BrokerInstances = list(
        list(
          ConsoleURL = "string",
          Endpoints = list(
            "string"
          ),
          IpAddress = "string"
        )
      ),
      BrokerName = "string",
      BrokerState = "CREATION_IN_PROGRESS"|"CREATION_FAILED"|"DELETION_IN_PROGRESS"|"RUNNING"|"REBOOT_IN_PROGRESS"|"CRITICAL_ACTION_REQUIRED",
      Configurations = list(
        Current = list(
          Id = "string",
          Revision = 123
        ),
        History = list(
          list(
            Id = "string",
            Revision = 123
          )
        ),
        Pending = list(
          Id = "string",
          Revision = 123
        )
      ),
      Created = as.POSIXct(
        "2015-01-01"
      ),
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
        ServiceAccountUsername = "string",
        UserBase = "string",
        UserRoleName = "string",
        UserSearchMatching = "string",
        UserSearchSubtree = TRUE|FALSE
      ),
      Logs = list(
        Audit = TRUE|FALSE,
        AuditLogGroup = "string",
        General = TRUE|FALSE,
        GeneralLogGroup = "string",
        Pending = list(
          Audit = TRUE|FALSE,
          General = TRUE|FALSE
        )
      ),
      MaintenanceWindowStartTime = list(
        DayOfWeek = "MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"|"SUNDAY",
        TimeOfDay = "string",
        TimeZone = "string"
      ),
      PendingAuthenticationStrategy = "SIMPLE"|"LDAP",
      PendingEngineVersion = "string",
      PendingHostInstanceType = "string",
      PendingLdapServerMetadata = list(
        Hosts = list(
          "string"
        ),
        RoleBase = "string",
        RoleName = "string",
        RoleSearchMatching = "string",
        RoleSearchSubtree = TRUE|FALSE,
        ServiceAccountUsername = "string",
        UserBase = "string",
        UserRoleName = "string",
        UserSearchMatching = "string",
        UserSearchSubtree = TRUE|FALSE
      ),
      PendingSecurityGroups = list(
        "string"
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
          PendingChange = "CREATE"|"UPDATE"|"DELETE",
          Username = "string"
        )
      )
    )

### Request syntax

    svc$describe_broker(
      BrokerId = "string"
    )
