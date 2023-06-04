<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_update_broker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a pending configuration change to a broker

### Description

Adds a pending configuration change to a broker.

### Usage

    mq_update_broker(AuthenticationStrategy, AutoMinorVersionUpgrade,
      BrokerId, Configuration, EngineVersion, HostInstanceType,
      LdapServerMetadata, Logs, MaintenanceWindowStartTime, SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_update_broker_:_AuthenticationStrategy">AuthenticationStrategy</code></td>
<td><p>Optional. The authentication strategy used to secure the broker.
The default is SIMPLE.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_update_broker_:_AutoMinorVersionUpgrade">AutoMinorVersionUpgrade</code></td>
<td><p>Enables automatic upgrades to new minor versions for brokers, as
new versions are released and supported by Amazon MQ. Automatic upgrades
occur during the scheduled maintenance window of the broker or after a
manual broker reboot.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_update_broker_:_BrokerId">BrokerId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
broker.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_update_broker_:_Configuration">Configuration</code></td>
<td><p>A list of information about the configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_update_broker_:_EngineVersion">EngineVersion</code></td>
<td><p>The broker engine version. For a list of supported engine
versions, see <a
href="https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/">Supported
engines</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_update_broker_:_HostInstanceType">HostInstanceType</code></td>
<td><p>The broker's host instance type to upgrade to. For a list of
supported instance types, see <a
href="https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker
instance types</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_update_broker_:_LdapServerMetadata">LdapServerMetadata</code></td>
<td><p>Optional. The metadata of the LDAP server used to authenticate
and authorize connections to the broker. Does not apply to RabbitMQ
brokers.</p></td>
</tr>
<tr class="even">
<td><code id="mq_update_broker_:_Logs">Logs</code></td>
<td><p>Enables Amazon CloudWatch logging for brokers.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_update_broker_:_MaintenanceWindowStartTime">MaintenanceWindowStartTime</code></td>
<td><p>The parameters that determine the WeeklyStartTime.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_update_broker_:_SecurityGroups">SecurityGroups</code></td>
<td><p>The list of security groups (1 minimum, 5 maximum) that
authorizes connections to brokers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      BrokerId = "string",
      Configuration = list(
        Id = "string",
        Revision = 123
      ),
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
        General = TRUE|FALSE
      ),
      MaintenanceWindowStartTime = list(
        DayOfWeek = "MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY"|"SUNDAY",
        TimeOfDay = "string",
        TimeZone = "string"
      ),
      SecurityGroups = list(
        "string"
      )
    )

### Request syntax

    svc$update_broker(
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      AutoMinorVersionUpgrade = TRUE|FALSE,
      BrokerId = "string",
      Configuration = list(
        Id = "string",
        Revision = 123
      ),
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
      SecurityGroups = list(
        "string"
      )
    )
