<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified connection

### Description

Deletes the specified connection.

Deleting a connection only stops the Direct Connect port hour and data
transfer charges. If you are partnering with any third parties to
connect with the Direct Connect location, you must cancel your service
with them separately.

### Usage

    directconnect_delete_connection(connectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_delete_connection_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ownerAccount = "string",
      connectionId = "string",
      connectionName = "string",
      connectionState = "ordering"|"requested"|"pending"|"available"|"down"|"deleting"|"deleted"|"rejected"|"unknown",
      region = "string",
      location = "string",
      bandwidth = "string",
      vlan = 123,
      partnerName = "string",
      loaIssueTime = as.POSIXct(
        "2015-01-01"
      ),
      lagId = "string",
      awsDevice = "string",
      jumboFrameCapable = TRUE|FALSE,
      awsDeviceV2 = "string",
      awsLogicalDeviceId = "string",
      hasLogicalRedundancy = "unknown"|"yes"|"no",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      providerName = "string",
      macSecCapable = TRUE|FALSE,
      portEncryptionStatus = "string",
      encryptionMode = "string",
      macSecKeys = list(
        list(
          secretARN = "string",
          ckn = "string",
          state = "string",
          startOn = "string"
        )
      )
    )

### Request syntax

    svc$delete_connection(
      connectionId = "string"
    )
