<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_join_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a file gateway to an Active Directory domain

### Description

Adds a file gateway to an Active Directory domain. This operation is
only supported for file gateways that support the SMB file protocol.

### Usage

    storagegateway_join_domain(GatewayARN, DomainName, OrganizationalUnit,
      DomainControllers, TimeoutInSeconds, UserName, Password)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_join_domain_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway. Use the
<code>list_gateways</code> operation to return a list of gateways for
your account and Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_join_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want the gateway to
join.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_join_domain_:_OrganizationalUnit">OrganizationalUnit</code></td>
<td><p>The organizational unit (OU) is a container in an Active
Directory that can hold users, groups, computers, and other OUs and this
parameter specifies the OU that the gateway will join within the AD
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_join_domain_:_DomainControllers">DomainControllers</code></td>
<td><p>List of IPv4 addresses, NetBIOS names, or host names of your
domain server. If you need to specify the port number include it after
the colon (“:”). For example,
<code>mydc.mydomain.com:389</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_join_domain_:_TimeoutInSeconds">TimeoutInSeconds</code></td>
<td><p>Specifies the time in seconds, in which the
<code>join_domain</code> operation must complete. The default is 20
seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_join_domain_:_UserName">UserName</code></td>
<td><p>[required] Sets the user name of user who has permission to add
the gateway to the Active Directory domain. The domain user account
should be enabled to join computers to the domain. For example, you can
use the domain administrator account or an account with delegated
permissions to join computers to the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_join_domain_:_Password">Password</code></td>
<td><p>[required] Sets the password of the user who has permission to
add the gateway to the Active Directory domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      ActiveDirectoryStatus = "ACCESS_DENIED"|"DETACHED"|"JOINED"|"JOINING"|"NETWORK_ERROR"|"TIMEOUT"|"UNKNOWN_ERROR"
    )

### Request syntax

    svc$join_domain(
      GatewayARN = "string",
      DomainName = "string",
      OrganizationalUnit = "string",
      DomainControllers = list(
        "string"
      ),
      TimeoutInSeconds = 123,
      UserName = "string",
      Password = "string"
    )
