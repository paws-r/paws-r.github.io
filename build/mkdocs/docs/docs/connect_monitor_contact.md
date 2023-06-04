<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_monitor_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates silent monitoring of a contact

### Description

Initiates silent monitoring of a contact. The Contact Control Panel
(CCP) of the user specified by *userId* will be set to silent monitoring
mode on the contact.

### Usage

    connect_monitor_contact(InstanceId, ContactId, UserId,
      AllowedMonitorCapabilities, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_monitor_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
find the instanceId in the ARN of the instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_monitor_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_monitor_contact_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_monitor_contact_:_AllowedMonitorCapabilities">AllowedMonitorCapabilities</code></td>
<td><p>Specify which monitoring actions the user is allowed to take. For
example, whether the user is allowed to escalate from silent monitoring
to barge.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_monitor_contact_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactId = "string",
      ContactArn = "string"
    )

### Request syntax

    svc$monitor_contact(
      InstanceId = "string",
      ContactId = "string",
      UserId = "string",
      AllowedMonitorCapabilities = list(
        "SILENT_MONITOR"|"BARGE"
      ),
      ClientToken = "string"
    )
