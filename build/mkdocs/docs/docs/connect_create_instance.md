<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Initiates an Amazon Connect instance with all the supported channels
enabled. It does not attach any storage, such as Amazon Simple Storage
Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
configurations on features, such as Contact Lens for Amazon Connect.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days before
you can restart creating and deleting instances in your account.

### Usage

    connect_create_instance(ClientToken, IdentityManagementType,
      InstanceAlias, DirectoryId, InboundCallsEnabled, OutboundCallsEnabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_instance_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_instance_:_IdentityManagementType">IdentityManagementType</code></td>
<td><p>[required] The type of identity management for your Amazon
Connect users.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_instance_:_InstanceAlias">InstanceAlias</code></td>
<td><p>The name for your instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_instance_:_DirectoryId">DirectoryId</code></td>
<td><p>The identifier for the directory.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_instance_:_InboundCallsEnabled">InboundCallsEnabled</code></td>
<td><p>[required] Your contact center handles incoming
contacts.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_instance_:_OutboundCallsEnabled">OutboundCallsEnabled</code></td>
<td><p>[required] Your contact center allows outbound calls.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      Arn = "string"
    )

### Request syntax

    svc$create_instance(
      ClientToken = "string",
      IdentityManagementType = "SAML"|"CONNECT_MANAGED"|"EXISTING_DIRECTORY",
      InstanceAlias = "string",
      DirectoryId = "string",
      InboundCallsEnabled = TRUE|FALSE,
      OutboundCallsEnabled = TRUE|FALSE
    )
