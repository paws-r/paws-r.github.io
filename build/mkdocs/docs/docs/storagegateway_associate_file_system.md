<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_associate_file_system</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate an Amazon FSx file system with the FSx File Gateway

### Description

Associate an Amazon FSx file system with the FSx File Gateway. After the
association process is complete, the file shares on the Amazon FSx file
system are available for access through the gateway. This operation only
supports the FSx File Gateway type.

### Usage

    storagegateway_associate_file_system(UserName, Password, ClientToken,
      GatewayARN, LocationARN, Tags, AuditDestinationARN, CacheAttributes,
      EndpointNetworkConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_associate_file_system_:_UserName">UserName</code></td>
<td><p>[required] The user name of the user credential that has
permission to access the root share D$ of the Amazon FSx file system.
The user account must belong to the Amazon FSx delegated admin user
group.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_associate_file_system_:_Password">Password</code></td>
<td><p>[required] The password of the user credential.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_associate_file_system_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique string value that you supply that is used by
the FSx File Gateway to ensure idempotent file system association
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_associate_file_system_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_associate_file_system_:_LocationARN">LocationARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon FSx file
system to associate with the FSx File Gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_associate_file_system_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to the file system
association. Each tag is a key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_associate_file_system_:_AuditDestinationARN">AuditDestinationARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the storage used for the audit
logs.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_associate_file_system_:_CacheAttributes">CacheAttributes</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_associate_file_system_:_EndpointNetworkConfiguration">EndpointNetworkConfiguration</code></td>
<td><p>Specifies the network configuration information for the gateway
associated with the Amazon FSx file system.</p>
<p>If multiple file systems are associated with this gateway, this
parameter's <code>IpAddresses</code> field is required.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileSystemAssociationARN = "string"
    )

### Request syntax

    svc$associate_file_system(
      UserName = "string",
      Password = "string",
      ClientToken = "string",
      GatewayARN = "string",
      LocationARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AuditDestinationARN = "string",
      CacheAttributes = list(
        CacheStaleTimeoutInSeconds = 123
      ),
      EndpointNetworkConfiguration = list(
        IpAddresses = list(
          "string"
        )
      )
    )
