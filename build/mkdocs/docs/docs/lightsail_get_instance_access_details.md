<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_instance_access_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance

### Description

Returns temporary SSH keys you can use to connect to a specific virtual
private server, or *instance*.

The `⁠get instance access details⁠` operation supports tag-based access
control via resource tags applied to the resource identified by
`⁠instance name⁠`. For more information, see the Amazon Lightsail
Developer Guide.

### Usage

    lightsail_get_instance_access_details(instanceName, protocol)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_instance_access_details_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the instance to access.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_instance_access_details_:_protocol">protocol</code></td>
<td><p>The protocol to use to connect to your instance. Defaults to
<code>ssh</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accessDetails = list(
        certKey = "string",
        expiresAt = as.POSIXct(
          "2015-01-01"
        ),
        ipAddress = "string",
        password = "string",
        passwordData = list(
          ciphertext = "string",
          keyPairName = "string"
        ),
        privateKey = "string",
        protocol = "ssh"|"rdp",
        instanceName = "string",
        username = "string",
        hostKeys = list(
          list(
            algorithm = "string",
            publicKey = "string",
            witnessedAt = as.POSIXct(
              "2015-01-01"
            ),
            fingerprintSHA1 = "string",
            fingerprintSHA256 = "string",
            notValidBefore = as.POSIXct(
              "2015-01-01"
            ),
            notValidAfter = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_instance_access_details(
      instanceName = "string",
      protocol = "ssh"|"rdp"
    )
